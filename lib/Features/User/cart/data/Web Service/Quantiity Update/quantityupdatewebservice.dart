import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Features/User/cart/data/Model/quantityupdateentity.dart';
import 'package:injectable/injectable.dart';

abstract class QuantityUpdateWebService {
  Future<QuantityUpdateEntity> quantityupdate(int productId, int quantity);
}

@Singleton(as: QuantityUpdateWebService)
class QuantityUpdateWebServiceImpl implements QuantityUpdateWebService {
  final ApiConsumer _apiConsumer;

  QuantityUpdateWebServiceImpl(this._apiConsumer);

  @override
  Future<QuantityUpdateEntity> quantityupdate(
      int productId, int quantity) async {
    // ignore: unused_local_variable
    final response = await _apiConsumer.post(
      "http://10.0.2.2:8000/api/cart/$productId/add",
      body: {
        "quantity": quantity,
      },
    );
    return QuantityUpdateEntity.fromJson(response);
  }
}
