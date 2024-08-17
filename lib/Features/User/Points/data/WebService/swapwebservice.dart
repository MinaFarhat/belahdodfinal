import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Core/api/end_points.dart';
import 'package:belahododfinal/Features/User/Points/data/Model/swapentity.dart';
import 'package:injectable/injectable.dart';

abstract class SwapWebService {
  Future<SwapEntity> swapPoints(int points);
}

@Singleton(as: SwapWebService)
class SwapWebServiceImpl implements SwapWebService {
  final ApiConsumer _apiConsumer;

  SwapWebServiceImpl(this._apiConsumer);

  @override
  Future<SwapEntity> swapPoints(int points) async {
    final response = await _apiConsumer.post(
      EndPoints.swapPointsUrl,
      body: {
        "value": points,
      },
    );
    return SwapEntity.fromJson(response);
  }
}
