import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/Visitor/Details/data/Model/basevisitorentity.dart';
import 'package:belahododfinal/Features/Visitor/Details/data/Repository/Base%20Repository%20Visitor/baserepositorybasevisitor.dart';
import 'package:belahododfinal/Features/Visitor/Details/data/Web%20Service/base_webservicevisitor.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositoryBaseVisitor)
class BaseRepositoryVisitorImpl implements BaseRepositoryBaseVisitor {
  final NetworkInfo _networkInfo;
  final BaseWebServiceVisitor _baseWebServiceVisitor;

  BaseRepositoryVisitorImpl(
      {required NetworkInfo networkInfo,
      required BaseWebServiceVisitor baseWebServiceVisitor})
      : _networkInfo = networkInfo,
        _baseWebServiceVisitor = baseWebServiceVisitor;

  @override
  Future<Either<NetworkExceptions, BaseVisitorEntity>> baseDetailsVisitor(
      int productID) async {
    if (await _networkInfo.isConnected) {
      try {
        final response =
            await _baseWebServiceVisitor.baseDetailsVisitor(productID);

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
