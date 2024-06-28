import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/note/data/Model/getnotificationsentity.dart';
import 'package:dartz/dartz.dart';

abstract class BaseRepositoryGetNotifications {
  Future<Either<NetworkExceptions, GetNotificationsEntity>> getNotifications();
}
