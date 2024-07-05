import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Core/api/end_points.dart';
import 'package:belahododfinal/Features/User/news/data/Model/getnewsentity.dart';
import 'package:injectable/injectable.dart';

abstract class NewsWebService {
  Future<GetNewsEntity> getNews();
}

@Singleton(as: NewsWebService)
class NewsWebServiceImpl implements NewsWebService {
  final ApiConsumer _apiConsumer;

  NewsWebServiceImpl(this._apiConsumer);

  @override
  Future<GetNewsEntity> getNews() async {
    final response = await _apiConsumer.get(EndPoints.getAllNewsUrl);
    return GetNewsEntity.fromJson(response);
  }
}
