import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Features/User/payment/Payment%20Methods/data/Model/transferentity.dart';
import 'package:injectable/injectable.dart';

abstract class TransferWebService {
  Future<TransferEntity> sendTransferImage(String transferImage);
}

@Singleton(as: TransferWebService)
class TransferWebServiceImpl implements TransferWebService {
  final ApiConsumer _apiConsumer;

  TransferWebServiceImpl(this._apiConsumer);

  @override
  Future<TransferEntity> sendTransferImage(String transferImage) async {
    final response = await _apiConsumer.post(
      "http://10.0.2.2:8000/api/order/transfer",
      body: {
        "image": transferImage,
      },
    );
    return TransferEntity.fromJson(response);
  }
}
