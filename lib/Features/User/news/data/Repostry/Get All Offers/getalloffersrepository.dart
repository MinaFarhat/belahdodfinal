import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/news/data/Model/getalloffersentity.dart';
import 'package:belahododfinal/Features/User/news/data/Repostry/Get%20All%20Offers/baserepositorygetalloffers.dart';
import 'package:belahododfinal/Features/User/news/data/Web%20Service/Get%20All%20Offers/getallofferswevservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositoryGetAllOffers)
class GetAllOffersRepositoryImpl implements BaseRepositoryGetAllOffers {
  final NetworkInfo _networkInfo;
  final GetAllOffersWebService _getAllOffersWebService;

  GetAllOffersRepositoryImpl(
      {required NetworkInfo networkInfo,
      required GetAllOffersWebService getAllOffersWebService})
      : _networkInfo = networkInfo,
        _getAllOffersWebService = getAllOffersWebService;

  @override
  Future<Either<NetworkExceptions, GetAllOffersEntity>> offers() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _getAllOffersWebService.offers();

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
