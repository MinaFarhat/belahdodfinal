import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/profile/data/Model/getuserinfoentity.dart';
import 'package:dartz/dartz.dart';

abstract class BaseRepositoryGetUserInfo {
  Future<Either<NetworkExceptions, GetUserInfoEntity>> userInfo();
}
