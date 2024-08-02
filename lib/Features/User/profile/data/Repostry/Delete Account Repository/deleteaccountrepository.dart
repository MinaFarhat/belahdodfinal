import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/profile/data/Model/deleteaccountentity.dart';
import 'package:belahododfinal/Features/User/profile/data/Repostry/Delete%20Account%20Repository/baserepositorydeleteaccount.dart';
import 'package:belahododfinal/Features/User/profile/data/Web%20Service/Delete%20Account%20WebService/deleteaccountwebservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositoryDeleteAccount)
class DeleteAccountRepositoryImpl implements BaseRepositoryDeleteAccount {
  final NetworkInfo _networkInfo;
  final DeleteAccountWebService _deleteAccountWebService;

  DeleteAccountRepositoryImpl(
      {required NetworkInfo networkInfo,
      required DeleteAccountWebService deleteAccountWebService})
      : _networkInfo = networkInfo,
        _deleteAccountWebService = deleteAccountWebService;

  @override
  Future<Either<NetworkExceptions, DeleteAccountEntity>> deleteAccount() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _deleteAccountWebService.deleteAccount();

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
