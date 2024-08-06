import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Core/api/end_points.dart';
import 'package:belahododfinal/Features/User/Vouchers/data/Model/getvouchersentity.dart';
import 'package:injectable/injectable.dart';

abstract class GetVouchersWebService {
  Future<GetVouchersEntity> vouchers();
}

@Singleton(as: GetVouchersWebService)
class GetVouchersWebServiceImpl implements GetVouchersWebService {
  final ApiConsumer _apiConsumer;

  GetVouchersWebServiceImpl(this._apiConsumer);

  @override
  Future<GetVouchersEntity> vouchers() async {
    final response = await _apiConsumer.get(EndPoints.getVouchersUrl);

    return GetVouchersEntity.fromJson(response);
  }
}
