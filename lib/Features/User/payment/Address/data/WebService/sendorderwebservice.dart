import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Core/api/end_points.dart';
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
      EndPoints.addressUrl,
      body: {
        "city": cityId,
        "address": address,
        "notes": notes,
      },
    );
    return SendOrderEntity.fromJson(response);
  }
}
