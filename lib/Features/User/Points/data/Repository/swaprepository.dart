import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/Points/data/Model/swapentity.dart';
import 'package:belahododfinal/Features/User/Points/data/Repository/baserepositoryswap.dart';
import 'package:belahododfinal/Features/User/Points/data/WebService/swapwebservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositorySwap)
class SwapRepositoryImpl implements BaseRepositorySwap {
  final NetworkInfo _networkInfo;
  final SwapWebService _swapWebService;

  SwapRepositoryImpl(
      {required NetworkInfo networkInfo,
      required SwapWebService swapWebService})
      : _networkInfo = networkInfo,
        _swapWebService = swapWebService;

  @override
  Future<Either<NetworkExceptions, SwapEntity>> swapPoints(int points) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _swapWebService.swapPoints(points);

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
