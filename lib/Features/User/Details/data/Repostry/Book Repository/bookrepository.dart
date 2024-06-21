import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/Details/data/Model/bookentity.dart';
import 'package:belahododfinal/Features/User/Details/data/Repostry/Book%20Repository/baserepositorybook.dart';
import 'package:belahododfinal/Features/User/Details/data/Web%20Service/book_webservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositoryBook)
class Bookrepository implements BaseRepositoryBook {
  final NetworkInfo _networkInfo;
  final BookWebService _bookWebService;

  Bookrepository(
      {required NetworkInfo networkInfo,
      required BookWebService bookWebService})
      : _networkInfo = networkInfo,
        _bookWebService = bookWebService;

  @override
  Future<Either<NetworkExceptions, BookEntity>> bookDetails() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _bookWebService.bookDetails();

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
