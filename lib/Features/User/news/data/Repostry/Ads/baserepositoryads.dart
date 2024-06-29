import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/news/data/Model/getadsentity.dart';
import 'package:dartz/dartz.dart';

abstract class BaseRepositoryAds {
  Future<Either<NetworkExceptions, GetAdsEntity>> getAds();
}
