import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/payment/Address/data/Model/sendorderentity.dart';
import 'package:dartz/dartz.dart';

abstract class BaseRepositorySendOrder {
  Future<Either<NetworkExceptions, SendOrderEntity>> sendOrder(
    int cityId,
    String address,
    String? notes,
  );
}
