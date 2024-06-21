import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Features/User/Details/data/Model/baseentity.dart';
import 'package:belahododfinal/Features/User/homepage/HomeScreen/data/Model/productentity.dart';
import 'package:injectable/injectable.dart';

abstract class BaseWebService {
  Future<BaseEntity> baseDetails();
}

@Singleton(as: BaseWebService)
class BaseWebServiceImpl implements BaseWebService {
  final ApiConsumer _apiConsumer;
  final ProductEntity _productentity;
  BaseWebServiceImpl(this._apiConsumer, this._productentity);

  @override
  Future<BaseEntity> baseDetails() async {
    final response = await _apiConsumer
        .get("http://localhost:8000/api/products/${_productentity.id}");

    return BaseEntity.fromJson(response);
  }
}
