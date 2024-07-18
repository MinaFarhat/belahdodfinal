import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Core/api/end_points.dart';
import 'package:belahododfinal/Features/User/Details/data/Model/likeentity.dart';
import 'package:injectable/injectable.dart';

abstract class LikeWebService {
  Future<LikeEntity> like(int productId);
}

@Singleton(as: LikeWebService)
class LikeWebServiceImpl implements LikeWebService {
  final ApiConsumer _apiConsumer;

  LikeWebServiceImpl(this._apiConsumer);

  @override
  Future<LikeEntity> like(int productId) async {
    final response =
        await _apiConsumer.post("${EndPoints.likeUrl}$productId/like");

    return LikeEntity.fromJson(response);
  }
}
