import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/Details/data/Model/ratingentity.dart';
import 'package:belahododfinal/Features/User/Details/data/Repostry/Rating%20Repository/baserepositoryrating.dart';
import 'package:belahododfinal/Features/User/Details/data/Web%20Service/ratingwebservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositoryRating)
class RatingRepositoryImpl implements BaseRepositoryRating {
  final NetworkInfo _networkInfo;
  final RatingWebService _ratingWebService;

  RatingRepositoryImpl(
      {required NetworkInfo networkInfo,
      required RatingWebService ratingWebService})
      : _networkInfo = networkInfo,
        _ratingWebService = ratingWebService;

  @override
  Future<Either<NetworkExceptions, RatingEntity>> rating(
      int productId, int rate) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _ratingWebService.rating(productId, rate);

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
