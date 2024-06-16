import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/Auth/Create%20Account/Data/Model/createaccountentity.dart';
import 'package:dartz/dartz.dart';

abstract class BaseReposotryCreateAccount {
  Future<Either<NetworkExceptions, CreateAccountEntity>> createaccount(
    String name,
    String password,
    String phoneNumber,
    String city,
    String address,
  );
}
