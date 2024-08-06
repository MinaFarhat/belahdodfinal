import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/payment/Address/data/Model/sendofferentity.dart';
import 'package:belahododfinal/Features/User/payment/Address/data/Repository/baserepositorysendoffer.dart';
import 'package:belahododfinal/Features/User/payment/Address/data/WebService/sendofferwebservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositorySendOffer)
class SendOfferRepositoryImpl implements BaseRepositorySendOffer {
  final NetworkInfo _networkInfo;
  final SendOfferWebService _sendOfferWebService;

  SendOfferRepositoryImpl(
      {required NetworkInfo networkInfo,
      required SendOfferWebService sendOfferWebService})
      : _networkInfo = networkInfo,
        _sendOfferWebService = sendOfferWebService;

  @override
  Future<Either<NetworkExceptions, SendOfferEntity>> sendOffer(
    int cityId,
    String address,
    String? notes,
    int offerId,
  ) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _sendOfferWebService.sendOffor(
            cityId, address, notes, offerId);

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
