import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Core/api/end_points.dart';
import 'package:belahododfinal/Features/User/Vouchers/data/Model/createvoucherentity.dart';
import 'package:injectable/injectable.dart';

abstract class CreateVoucherWebService {
  Future<CreateVoucherEntity> createVoucher(
    int totalValue,
    String? notes,
    String phoneNumber,
  );
}

@Singleton(as: CreateVoucherWebService)
class CreateVoucherWebServiceImpl implements CreateVoucherWebService {
  final ApiConsumer _apiConsumer;

  CreateVoucherWebServiceImpl(this._apiConsumer);

  @override
  Future<CreateVoucherEntity> createVoucher(
      int totalValue, String? notes, String phoneNumber) async {
    final response = await _apiConsumer.post(
      EndPoints.createVoucherUrl,
      body: {
        "total_value": totalValue,
        "notes": notes,
        "phone_number": phoneNumber,
      },
    );
    return CreateVoucherEntity.fromJson(response);
  }
}
