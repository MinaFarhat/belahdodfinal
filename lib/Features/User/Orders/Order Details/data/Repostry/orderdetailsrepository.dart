import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/Orders/Order%20Details/data/Model/orderdetailsentity.dart';
import 'package:belahododfinal/Features/User/Orders/Order%20Details/data/Web%20Service/orderdetailswebservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'baserepositoryorderdetails.dart';

@Singleton(as: BaseRepositoryOrderDetails)
class OrderDetailsRepositoryImpl implements BaseRepositoryOrderDetails {
  final NetworkInfo _networkInfo;
  final OrderDetailsWebService _orderDetailsWebService;

  OrderDetailsRepositoryImpl(
      {required NetworkInfo networkInfo,
      required OrderDetailsWebService orderDetailsWebService})
      : _networkInfo = networkInfo,
        _orderDetailsWebService = orderDetailsWebService;

  @override
  Future<Either<NetworkExceptions, OrderDetailsEntity>> orderDetails(
      int orderId) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _orderDetailsWebService.orderDetails(orderId);

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
