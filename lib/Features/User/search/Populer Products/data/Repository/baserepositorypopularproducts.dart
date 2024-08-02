import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/search/Populer%20Products/data/Model/popularproductsentity.dart';
import 'package:dartz/dartz.dart';

abstract class BaseRepositoryPopularProducts {
  Future<Either<NetworkExceptions, PopularProductsEntity>> popularProducts();
}
