import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/profile/data/Model/updateuserinfoentity.dart';
import 'package:dartz/dartz.dart';

abstract class BaseRepositoryUpdateUserInfo {
  Future<Either<NetworkExceptions, UpdateUserInfoEntity>> updateUserInfo(
    String name,
    String phoneNumber,
    String address,
    String city,
  );
}
