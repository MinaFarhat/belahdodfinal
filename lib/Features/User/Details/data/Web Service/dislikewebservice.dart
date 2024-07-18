import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Core/api/end_points.dart';
import 'package:belahododfinal/Features/User/Details/data/Model/dislikeentity.dart';
import 'package:injectable/injectable.dart';

abstract class DisLikeWebService {
  Future<DisLikeEntity> disLike(int productId);
}

@Singleton(as: DisLikeWebService)
class DisLikeWebServiceImpl implements DisLikeWebService {
  final ApiConsumer _apiConsumer;

  DisLikeWebServiceImpl(this._apiConsumer);

  @override
  Future<DisLikeEntity> disLike(int productId) async {
    final response =
        await _apiConsumer.post("${EndPoints.disLikeUrl}$productId/dislike");

    return DisLikeEntity.fromJson(response);
  }
}
