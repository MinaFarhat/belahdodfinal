import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/news/data/Model/detailsofoffer.dart';
import 'package:dartz/dartz.dart';

abstract class BaseRepositoryDetailsofOffer {
  Future<Either<NetworkExceptions, DetailsofOfferEntity>> detailsofOffer(
      int offerId);
}
