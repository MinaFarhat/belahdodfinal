import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/Details/data/Model/likeentity.dart';
import 'package:belahododfinal/Features/User/Details/data/Repostry/Like%20Repository/baserepositorylike.dart';
import 'package:belahododfinal/Features/User/Details/data/Web%20Service/likewebservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositoryLike)
class LikeRepositoryImpl implements BaseRepositoryLike {
  final NetworkInfo _networkInfo;
  final LikeWebService _likeWebService;

  LikeRepositoryImpl(
      {required NetworkInfo networkInfo,
      required LikeWebService likeWebService})
      : _networkInfo = networkInfo,
        _likeWebService = likeWebService;

  @override
  Future<Either<NetworkExceptions, LikeEntity>> like(int productId) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _likeWebService.like(productId);

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
