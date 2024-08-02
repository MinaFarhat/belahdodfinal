import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/profile/data/Model/updateuserinfoentity.dart';
import 'package:belahododfinal/Features/User/profile/data/Repostry/Update%20User%20Info%20Repository/baserepositoryupdateuserinfo.dart';
import 'package:belahododfinal/Features/User/profile/data/Web%20Service/Update%20User%20Info%20WebService/updateuserinfowebserivce.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositoryUpdateUserInfo)
class UpdateUserInfoRepositoryImpl implements BaseRepositoryUpdateUserInfo {
  final NetworkInfo _networkInfo;
  final UpdateUserInfoWebService _updateUserInfoWebService;

  UpdateUserInfoRepositoryImpl(
      {required NetworkInfo networkInfo,
      required UpdateUserInfoWebService updateUserInfoWebService})
      : _networkInfo = networkInfo,
        _updateUserInfoWebService = updateUserInfoWebService;

  @override
  Future<Either<NetworkExceptions, UpdateUserInfoEntity>> updateUserInfo(
      String name, String phoneNumber, String address, String city) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _updateUserInfoWebService.updateUserInfo(
            name, phoneNumber, address, city);

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
