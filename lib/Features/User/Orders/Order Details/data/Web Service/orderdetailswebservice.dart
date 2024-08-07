import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Core/api/end_points.dart';
import 'package:belahododfinal/Features/User/Orders/Order%20Details/data/Model/orderdetailsentity.dart';
import 'package:injectable/injectable.dart';

abstract class OrderDetailsWebService {
  Future<OrderDetailsEntity> orderDetails(int orderId);
}

@Singleton(as: OrderDetailsWebService)
class OrderDetailsWebServiceImpl implements OrderDetailsWebService {
  final ApiConsumer _apiConsumer;

  OrderDetailsWebServiceImpl(this._apiConsumer);

  @override
  Future<OrderDetailsEntity> orderDetails(int orderId) async {
    final response = await _apiConsumer
        .get(EndPoints.getOrderDetailsUrl + orderId.toString());
    return OrderDetailsEntity.fromJson(response);
  }
}
