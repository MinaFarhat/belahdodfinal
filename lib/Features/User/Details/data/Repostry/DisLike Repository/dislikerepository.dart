import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/Details/data/Model/dislikeentity.dart';
import 'package:belahododfinal/Features/User/Details/data/Repostry/DisLike%20Repository/baserepositorydislike.dart';
import 'package:belahododfinal/Features/User/Details/data/Web%20Service/dislikewebservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositoryDisLike)
class DisLikeRepositoryImpl implements BaseRepositoryDisLike {
  final NetworkInfo _networkInfo;
  final DisLikeWebService _disLikeWebService;

  DisLikeRepositoryImpl(
      {required NetworkInfo networkInfo,
      required DisLikeWebService disLikeWebService})
      : _networkInfo = networkInfo,
        _disLikeWebService = disLikeWebService;

  @override
  Future<Either<NetworkExceptions, DisLikeEntity>> disLike(
      int productId) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _disLikeWebService.disLike(productId);

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
