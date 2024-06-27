import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/Orders/main%20orders/data/Model/getordersentity.dart';
import 'package:dartz/dartz.dart';

abstract class BaseRepositoryGetOrders {
  Future<Either<NetworkExceptions, GetOrdersEntity>> getOrders();
}
