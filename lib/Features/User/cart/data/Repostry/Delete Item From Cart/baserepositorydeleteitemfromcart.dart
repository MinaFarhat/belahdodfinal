import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/cart/data/Model/deleteitemfromcartentity.dart';
import 'package:dartz/dartz.dart';

abstract class BaseRepositoryDeleteItemFromCart {
  Future<Either<NetworkExceptions, DeleteItemFromCartEntity>>
      deleteitemfromcart(int productId);
}
