import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/Details/data/Model/dislikeentity.dart';
import 'package:dartz/dartz.dart';

abstract class BaseRepositoryDisLike {
  Future<Either<NetworkExceptions, DisLikeEntity>> disLike(
    int productId,
  );
}
