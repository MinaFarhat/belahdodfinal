import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/Auth/Is%20Client/data/model/iscliententity.dart';
import 'package:belahododfinal/Features/Auth/Is%20Client/data/repository/baserepositoryisclient.dart';
import 'package:belahododfinal/Features/Auth/Is%20Client/data/webservice/isclientwebservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositoryIsClient)
class IsClientRepositoryImpl implements BaseRepositoryIsClient {
  final NetworkInfo _networkInfo;
  final IsClientWebService _isClientWebService;

  IsClientRepositoryImpl(
      {required NetworkInfo networkInfo,
      required IsClientWebService isClientWebService})
      : _networkInfo = networkInfo,
        _isClientWebService = isClientWebService;

  @override
  Future<Either<NetworkExceptions, IsClientEntity>> isClient() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _isClientWebService.isClient();
        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
