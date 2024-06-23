import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/Auth/Create%20Account/Data/Repostry/basereposotrycreateaccount.dart';
import 'package:belahododfinal/Features/Auth/Create%20Account/Data/Web%20Service/createaccountwebservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseReposotryCreateAccount)
class CreateAccountRepostryImpl implements BaseReposotryCreateAccount {
  final NetworkInfo _networkInfo;
  final CreateAccountWebService _accountWebService;

  CreateAccountRepostryImpl(
      {required NetworkInfo networkInfo,
      required CreateAccountWebService accountWebService})
      : _networkInfo = networkInfo,
        _accountWebService = accountWebService;

  @override
  Future<Either<NetworkExceptions, void>> createaccount(
    String name,
    String password,
    String confirmPassword,
    String phoneNumber,
    String city,
    String address,
    String role,
  ) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _accountWebService.createaccount(
          name,
          password,
          confirmPassword,
          phoneNumber,
          city,
          address,
          role,
        );

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
