import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/cart/data/Model/addtocartentity.dart';
import 'package:dartz/dartz.dart';

abstract class BaseRepositoryAddtoCart {
  Future<Either<NetworkExceptions, AddtoCartEntity>> addtocart(int productId);
}
