import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/profile/data/Model/deleteaccountentity.dart';
import 'package:dartz/dartz.dart';

abstract class BaseRepositoryDeleteAccount {
  Future<Either<NetworkExceptions, DeleteAccountEntity>> deleteAccount();
}
