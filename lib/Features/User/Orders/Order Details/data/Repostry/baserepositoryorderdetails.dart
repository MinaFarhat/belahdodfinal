import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/Orders/Order%20Details/data/Model/orderdetailsentity.dart';
import 'package:dartz/dartz.dart';

abstract class BaseRepositoryOrderDetails {
  Future<Either<NetworkExceptions, OrderDetailsEntity>> orderDetails(
    int orderId,
  );
}
