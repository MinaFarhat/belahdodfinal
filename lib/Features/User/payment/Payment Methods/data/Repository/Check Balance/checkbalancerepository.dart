import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/payment/Payment%20Methods/data/Model/checkbalanceentity.dart';
import 'package:belahododfinal/Features/User/payment/Payment%20Methods/data/Repository/Check%20Balance/baserepositorycheckbalance.dart';
import 'package:belahododfinal/Features/User/payment/Payment%20Methods/data/Web%20Service/Check%20Balance/checkbalancewebservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositoryCheckBalance)
class CheckBalanceRepositoryImpl implements BaseRepositoryCheckBalance {
  final NetworkInfo _networkInfo;
  final CheckBalanceWebService _checkBalanceWebService;

  CheckBalanceRepositoryImpl(
      {required NetworkInfo networkInfo,
      required CheckBalanceWebService checkBalanceWebService})
      : _networkInfo = networkInfo,
        _checkBalanceWebService = checkBalanceWebService;

  @override
  Future<Either<NetworkExceptions, CheckBalanceEntity>> checkBalance() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _checkBalanceWebService.checkBalance();

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
