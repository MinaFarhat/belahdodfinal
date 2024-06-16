import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:dartz/dartz.dart';

abstract class BaseReposotryCreateAccount {
  Future<Either<NetworkExceptions, void>> createaccount(
    String name,
    String password,
    String phoneNumber,
    String city,
    String address,
  );
}
