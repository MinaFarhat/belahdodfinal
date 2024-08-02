import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/profile/data/Model/getuserinfoentity.dart';
import 'package:belahododfinal/Features/User/profile/data/Repostry/User%20Info%20Repository/baserepositorygetuserinfo.dart';
import 'package:belahododfinal/Features/User/profile/data/Web%20Service/User%20Info%20WebService/getuserinfowebservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositoryGetUserInfo)
class GetUserInfoRepositoryImpl implements BaseRepositoryGetUserInfo {
  final NetworkInfo _networkInfo;
  final GetUserInfoWebService _getUserInfoWebService;

  GetUserInfoRepositoryImpl(
      {required NetworkInfo networkInfo,
      required GetUserInfoWebService getUserInfoWebService})
      : _networkInfo = networkInfo,
        _getUserInfoWebService = getUserInfoWebService;

  @override
  Future<Either<NetworkExceptions, GetUserInfoEntity>> userInfo() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _getUserInfoWebService.userInfo();

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
