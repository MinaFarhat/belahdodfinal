import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/Details/data/Model/baseentity.dart';
import 'package:belahododfinal/Features/User/Details/data/Repostry/Base%20Repository/baserepositorybase.dart';
import 'package:belahododfinal/Features/User/Details/data/Web%20Service/base_webservice.dart';
import 'package:belahododfinal/Features/User/homepage/HomeScreen/data/Repostitory/baserepositorysection.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositorySection)
class BaseRepositoryImpl implements BaseRepositoryBase {
  final NetworkInfo _networkInfo;
  final BaseWebService _baseWebService;

  BaseRepositoryImpl(
      {required NetworkInfo networkInfo,
      required BaseWebService baseWebService})
      : _networkInfo = networkInfo,
        _baseWebService = baseWebService;

  @override
  Future<Either<NetworkExceptions, BaseEntity>> baseDetails() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _baseWebService.baseDetails();

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
