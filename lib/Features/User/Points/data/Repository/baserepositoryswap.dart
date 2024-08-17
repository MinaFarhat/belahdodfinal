import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/Points/data/Model/swapentity.dart';
import 'package:dartz/dartz.dart';

abstract class BaseRepositorySwap {
  Future<Either<NetworkExceptions, SwapEntity>> swapPoints(
    int points,
  );
}
