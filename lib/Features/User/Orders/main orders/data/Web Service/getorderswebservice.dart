import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Features/User/Orders/main%20orders/data/Model/getordersentity.dart';
import 'package:injectable/injectable.dart';

abstract class GetOrdersWebService {
  Future<GetOrdersEntity> getOrders();
}

@Singleton(as: GetOrdersWebService)
class GetOrdersWebServiceImpl implements GetOrdersWebService {
  final ApiConsumer _apiConsumer;

  GetOrdersWebServiceImpl(this._apiConsumer);

  @override
  Future<GetOrdersEntity> getOrders() async {
    final response = await _apiConsumer.get("http://10.0.2.2:8000/api/orders");
    return GetOrdersEntity.fromJson(response);
  }
}
