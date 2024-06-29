import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/news/data/Model/getadsentity.dart';
import 'package:belahododfinal/Features/User/news/data/Repostry/Ads/baserepositoryads.dart';
import 'package:belahododfinal/Features/User/news/data/Web%20Service/Ads/adswebservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositoryAds)
class AdsRepositoryImpl implements BaseRepositoryAds {
  final NetworkInfo _networkInfo;
  final AdsWebService _adsWebService;

  AdsRepositoryImpl(
      {required NetworkInfo networkInfo, required AdsWebService adsWebService})
      : _networkInfo = networkInfo,
        _adsWebService = adsWebService;

  @override
  Future<Either<NetworkExceptions, GetAdsEntity>> getAds() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _adsWebService.ads();

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
