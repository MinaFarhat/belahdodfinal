import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/news/data/Model/detailsofoffer.dart';
import 'package:belahododfinal/Features/User/news/data/Repostry/Details%20of%20Offer/baserepositorydetailsofoffer.dart';
import 'package:belahododfinal/Features/User/news/data/Web%20Service/Details%20of%20Offer/detailsofofferwebservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositoryDetailsofOffer)
class DetailsofOfferRepositoryImpl implements BaseRepositoryDetailsofOffer {
  final NetworkInfo _networkInfo;
  final DetailsofOfferWebService _detailsofOfferWebService;

  DetailsofOfferRepositoryImpl(
      {required NetworkInfo networkInfo,
      required DetailsofOfferWebService detailsofOfferWebService})
      : _networkInfo = networkInfo,
        _detailsofOfferWebService = detailsofOfferWebService;

  @override
  Future<Either<NetworkExceptions, DetailsofOfferEntity>> detailsofOffer(
      int offerId) async {
    if (await _networkInfo.isConnected) {
      try {
        final response =
            await _detailsofOfferWebService.detailsOfOffer(offerId);

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
