import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Features/User/Details/data/Model/quraanentity.dart';
import 'package:belahododfinal/Features/User/homepage/HomeScreen/data/Model/productentity.dart';
import 'package:injectable/injectable.dart';

abstract class QuraanWebService {
  Future<QuraanEntity> quraanDetails();
}

@Singleton(as: QuraanWebService)
class QuraanWebServiceImpl implements QuraanWebService {
  final ApiConsumer _apiConsumer;
  final ProductEntity _productentity;
  QuraanWebServiceImpl(this._apiConsumer, this._productentity);

  @override
  Future<QuraanEntity> quraanDetails() async {
    final response = await _apiConsumer
        .get("http://localhost:8000/api/products/${_productentity.id}");

    return QuraanEntity.fromJson(response);
  }
}
