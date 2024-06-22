import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Features/User/Details/data/Model/quraanentity.dart';
import 'package:injectable/injectable.dart';

abstract class QuraanWebService {
  Future<QuraanEntity> quraanDetails(int productID);
}

@Singleton(as: QuraanWebService)
class QuraanWebServiceImpl implements QuraanWebService {
  final ApiConsumer _apiConsumer;

  QuraanWebServiceImpl(this._apiConsumer);

  @override
  Future<QuraanEntity> quraanDetails(int productID) async {
    final response =
        await _apiConsumer.get("http://10.0.2.2:8000/api/products/$productID");

    return QuraanEntity.fromJson(response);
  }
}
