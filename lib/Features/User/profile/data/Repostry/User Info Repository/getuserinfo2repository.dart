import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/profile/data/Model/getuserinfo2entity.dart';
import 'package:belahododfinal/Features/User/profile/data/Repostry/User%20Info%20Repository/baserepositorygetuserinfo2.dart';
import 'package:belahododfinal/Features/User/profile/data/Web%20Service/User%20Info%20WebService/getuserinfo2webservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositoryGetUserInfo2)
class GetUserInfo2RepositoryImpl implements BaseRepositoryGetUserInfo2 {
  final NetworkInfo _networkInfo;
  final GetUserInfo2WebService _getUserInfo2WebService;

  GetUserInfo2RepositoryImpl(
      {required NetworkInfo networkInfo,
      required GetUserInfo2WebService getUserInfo2WebService})
      : _networkInfo = networkInfo,
        _getUserInfo2WebService = getUserInfo2WebService;

  @override
  Future<Either<NetworkExceptions, GetUserInfo2Entity>> userInfo2() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _getUserInfo2WebService.userInfo2();

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
