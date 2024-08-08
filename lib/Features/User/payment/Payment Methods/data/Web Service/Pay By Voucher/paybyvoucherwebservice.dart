import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Core/api/end_points.dart';
import 'package:belahododfinal/Features/User/payment/Payment%20Methods/data/Model/paybyvoucherentity.dart';
import 'package:injectable/injectable.dart';

abstract class PayByVoucherWebService {
  Future<PayByVoucherEntity> payByVoucher(int orderId, int voucherId);
}

@Singleton(as: PayByVoucherWebService)
class PayByVoucherWebServiceImpl implements PayByVoucherWebService {
  final ApiConsumer _apiConsumer;

  PayByVoucherWebServiceImpl(this._apiConsumer);

  @override
  Future<PayByVoucherEntity> payByVoucher(int orderId, int voucherId) async {
    final response = await _apiConsumer
        .post("${EndPoints.voucherPaymentMethodeUrl}$orderId/$voucherId");

    return PayByVoucherEntity.fromJson(response);
  }
}
