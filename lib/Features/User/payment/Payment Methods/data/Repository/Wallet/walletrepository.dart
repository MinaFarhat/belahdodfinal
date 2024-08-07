import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/payment/Payment%20Methods/data/Model/walletentity.dart';
import 'package:belahododfinal/Features/User/payment/Payment%20Methods/data/Repository/Wallet/baserepositorywallet.dart';
import 'package:belahododfinal/Features/User/payment/Payment%20Methods/data/Web%20Service/Wallet/walletwebservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositoryWallet)
class WalletRepositoryImpl implements BaseRepositoryWallet {
  final NetworkInfo _networkInfo;
  final WalletWebService _walletWebService;

  WalletRepositoryImpl(
      {required NetworkInfo networkInfo,
      required WalletWebService walletWebService})
      : _networkInfo = networkInfo,
        _walletWebService = walletWebService;

  @override
  Future<Either<NetworkExceptions, WalletEntity>> wallet(int orderId) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _walletWebService.wallet(orderId);

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
