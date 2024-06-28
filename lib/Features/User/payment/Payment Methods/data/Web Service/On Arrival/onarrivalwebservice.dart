import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Features/User/payment/Payment%20Methods/data/Model/onarrivalentity.dart';
import 'package:injectable/injectable.dart';

abstract class OnArrivalWebService {
  Future<OnArrivalEntity> onArrival();
}

@Singleton(as: OnArrivalWebService)
class OnArrivalWebServiceImpl implements OnArrivalWebService {
  final ApiConsumer _apiConsumer;

  OnArrivalWebServiceImpl(this._apiConsumer);

  @override
  Future<OnArrivalEntity> onArrival() async {
    final response = await _apiConsumer.post(
      "http://10.0.2.2:8000/api/order/on_arrival",
    );
    return OnArrivalEntity.fromJson(response);
  }
}
