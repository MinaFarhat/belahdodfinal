import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/Visitor/Details/data/Model/bookvisitorentity.dart';
import 'package:belahododfinal/Features/Visitor/Details/data/Repository/Book%20Repository%20Visitor/baserepositorybookvisitor.dart';
import 'package:belahododfinal/Features/Visitor/Details/data/Web%20Service/book_webservicevisitor.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositoryBookVisitor)
class BookRepositoryVisitorImpl implements BaseRepositoryBookVisitor {
  final NetworkInfo _networkInfo;
  final BookWebServiceVisitor _bookWebServiceVisitor;

  BookRepositoryVisitorImpl(
      {required NetworkInfo networkInfo,
      required BookWebServiceVisitor bookWebServiceVisitor})
      : _networkInfo = networkInfo,
        _bookWebServiceVisitor = bookWebServiceVisitor;

  @override
  Future<Either<NetworkExceptions, BookVisitorEntity>> bookDetailsVisitor(
      int productID) async {
    if (await _networkInfo.isConnected) {
      try {
        final response =
            await _bookWebServiceVisitor.bookDetailsVisitor(productID);

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
