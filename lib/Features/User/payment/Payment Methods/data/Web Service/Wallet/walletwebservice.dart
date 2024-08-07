import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Core/api/end_points.dart';
import 'package:belahododfinal/Features/User/payment/Payment%20Methods/data/Model/walletentity.dart';
import 'package:injectable/injectable.dart';

abstract class WalletWebService {
  Future<WalletEntity> wallet(int orderId);
}

@Singleton(as: WalletWebService)
class WalletWebServiceImpl implements WalletWebService {
  final ApiConsumer _apiConsumer;

  WalletWebServiceImpl(this._apiConsumer);

  @override
  Future<WalletEntity> wallet(int orderId) async {
    final response =
        await _apiConsumer.post("${EndPoints.walletPaymentMethodeUrl}$orderId");

    return WalletEntity.fromJson(response);
  }
}
