import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/cart/data/Model/quantityupdateentity.dart';
import 'package:dartz/dartz.dart';

abstract class BaseRepositoryQuantityUpdate {
  Future<Either<NetworkExceptions, QuantityUpdateEntity>> quantityupdate(
    int productId,
    int quantity,
  );
}
