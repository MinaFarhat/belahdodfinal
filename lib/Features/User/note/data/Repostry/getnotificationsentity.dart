import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/note/data/Model/getnotificationsentity.dart';
import 'package:belahododfinal/Features/User/note/data/Repostry/baserepositorygetnotifications.dart';
import 'package:belahododfinal/Features/User/note/data/Web%20Service/getnotificationswebservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositoryGetNotifications)
class GetNotificationsRepositoryImpl implements BaseRepositoryGetNotifications {
  final NetworkInfo _networkInfo;
  final GetNotificationsWebService _getNotificationsWebService;

  GetNotificationsRepositoryImpl(
      {required NetworkInfo networkInfo,
      required GetNotificationsWebService getNotificationsWebService})
      : _networkInfo = networkInfo,
        _getNotificationsWebService = getNotificationsWebService;

  @override
  Future<Either<NetworkExceptions, GetNotificationsEntity>>
      getNotifications() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _getNotificationsWebService.getNotifications();

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
