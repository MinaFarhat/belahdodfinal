import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Core/api/end_points.dart';
import 'package:belahododfinal/Features/User/payment/Payment%20Methods/data/Model/checkbalanceentity.dart';
import 'package:injectable/injectable.dart';

abstract class CheckBalanceWebService {
  Future<CheckBalanceEntity> checkBalance();
}

@Singleton(as: CheckBalanceWebService)
class CheckBalanceWebServiceImpl implements CheckBalanceWebService {
  final ApiConsumer _apiConsumer;

  CheckBalanceWebServiceImpl(this._apiConsumer);

  @override
  Future<CheckBalanceEntity> checkBalance() async {
    final response = await _apiConsumer.get(EndPoints.checkBalance);

    return CheckBalanceEntity.fromJson(response);
  }
}
