import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/payment/Address/data/Model/sendofferentity.dart';
import 'package:dartz/dartz.dart';

abstract class BaseRepositorySendOffer {
  Future<Either<NetworkExceptions, SendOfferEntity>> sendOffer(
    int cityId,
    String address,
    String? notes,
    int offerId,
  );
}
