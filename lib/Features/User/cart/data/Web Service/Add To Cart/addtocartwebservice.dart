import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Features/User/cart/data/Model/addtocartentity.dart';
import 'package:injectable/injectable.dart';

abstract class AddtoCartWebService {
  Future<AddtoCartEntity> addtocart(int productID);
}

@Singleton(as: AddtoCartWebService)
class AddtoCartWebServiceImpl implements AddtoCartWebService {
  final ApiConsumer _apiConsumer;

  AddtoCartWebServiceImpl(this._apiConsumer);

  @override
  Future<AddtoCartEntity> addtocart(int productID) async {
    final response = await _apiConsumer
        .post("http://10.0.2.2:8000/api/cart/$productID/add");

    return AddtoCartEntity.fromJson(response);
  }
}
