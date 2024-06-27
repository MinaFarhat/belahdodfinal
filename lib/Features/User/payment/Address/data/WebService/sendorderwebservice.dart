import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Features/User/payment/Address/data/Model/sendorderentity.dart';
import 'package:injectable/injectable.dart';

abstract class SendOrderWebService {
  Future<SendOrderEntity> sendorder(int cityId, String address, String? notes);
}

@Singleton(as: SendOrderWebService)
class SendOrderWebServiceImpl implements SendOrderWebService {
  final ApiConsumer _apiConsumer;

  SendOrderWebServiceImpl(this._apiConsumer);

  @override
  Future<SendOrderEntity> sendorder(
      int cityId, String address, String? notes) async {
    final response = await _apiConsumer.post(
      "http://10.0.2.2:8000/api/order/address",
      body: {
        "city": cityId,
        "address": address,
        "notes": notes,
      },
    );
    return SendOrderEntity.fromJson(response);
  }
}
