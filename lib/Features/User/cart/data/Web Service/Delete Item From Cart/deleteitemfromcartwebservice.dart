import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Features/User/cart/data/Model/deleteitemfromcartentity.dart';
import 'package:injectable/injectable.dart';

abstract class DeleteItemFromCartWebService {
  Future<DeleteItemFromCartEntity> deleteitemfromcart(int productId);
}

@Singleton(as: DeleteItemFromCartWebService)
class DeleteItemFromCartWebServiceImpl implements DeleteItemFromCartWebService {
  final ApiConsumer _apiConsumer;

  DeleteItemFromCartWebServiceImpl(this._apiConsumer);

  @override
  Future<DeleteItemFromCartEntity> deleteitemfromcart(int productId) async {
    final response =
        await _apiConsumer.delete("http://10.0.2.2:8000/api/cart/$productId");

    return DeleteItemFromCartEntity.fromJson(response);
  }
}
