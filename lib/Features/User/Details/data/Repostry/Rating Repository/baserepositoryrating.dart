import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/Details/data/Model/ratingentity.dart';
import 'package:dartz/dartz.dart';

abstract class BaseRepositoryRating {
  Future<Either<NetworkExceptions, RatingEntity>> rating(
    int productId,
    int rate,
  );
}
