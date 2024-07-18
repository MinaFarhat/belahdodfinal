import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Core/api/end_points.dart';
import 'package:belahododfinal/Features/User/Details/data/Model/ratingentity.dart';
import 'package:injectable/injectable.dart';

abstract class RatingWebService {
  Future<RatingEntity> rating(int productId, int rate);
}

@Singleton(as: RatingWebService)
class RatingWebServiceImpl implements RatingWebService {
  final ApiConsumer _apiConsumer;

  RatingWebServiceImpl(this._apiConsumer);

  @override
  Future<RatingEntity> rating(int productId, int rate) async {
    final response = await _apiConsumer.post(
      "${EndPoints.ratingUrl}$productId/rate",
      body: {
        "rating": rate,
      },
    );
    return RatingEntity.fromJson(response);
  }
}
