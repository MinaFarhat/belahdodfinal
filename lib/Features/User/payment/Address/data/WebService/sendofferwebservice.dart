import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Core/api/end_points.dart';
import 'package:belahododfinal/Features/User/payment/Address/data/Model/sendofferentity.dart';
import 'package:injectable/injectable.dart';

abstract class SendOfferWebService {
  Future<SendOfferEntity> sendOffor(
    int cityId,
    String address,
    String? notes,
    int offerId,
  );
}

@Singleton(as: SendOfferWebService)
class SendOfferWebServiceImpl implements SendOfferWebService {
  final ApiConsumer _apiConsumer;

  SendOfferWebServiceImpl(this._apiConsumer);

  @override
  Future<SendOfferEntity> sendOffor(
      int cityId, String address, String? notes, int offerId) async {
    final response = await _apiConsumer.post(
      EndPoints.sendOfferUrl + offerId.toString(),
      body: {
        "city_id": cityId,
        "address": address,
        "notes": notes,
      },
    );
    return SendOfferEntity.fromJson(response);
  }
}
