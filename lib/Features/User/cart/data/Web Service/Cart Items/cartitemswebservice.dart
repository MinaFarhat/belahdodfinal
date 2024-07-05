import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Core/api/end_points.dart';
import 'package:belahododfinal/Features/User/cart/data/Model/getcartitemsentity.dart';
import 'package:injectable/injectable.dart';

abstract class CartItemsWebService {
  Future<GetCartItemsEntity> getcartitems();
}

@Singleton(as: CartItemsWebService)
class CartItemsWebServiceImpl implements CartItemsWebService {
  final ApiConsumer _apiConsumer;

  CartItemsWebServiceImpl(this._apiConsumer);

  @override
  Future<GetCartItemsEntity> getcartitems() async {
    final response = await _apiConsumer.get(EndPoints.cartItemsUrl);

    return GetCartItemsEntity.fromJson(response);
  }
}
