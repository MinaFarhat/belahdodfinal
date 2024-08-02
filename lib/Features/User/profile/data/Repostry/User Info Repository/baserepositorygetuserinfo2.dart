import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/profile/data/Model/getuserinfo2entity.dart';
import 'package:dartz/dartz.dart';

abstract class BaseRepositoryGetUserInfo2 {
  Future<Either<NetworkExceptions, GetUserInfo2Entity>> userInfo2();
}
