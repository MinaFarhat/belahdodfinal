import 'package:belahododfinal/Core/api/api_consumer.dart';
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
    final response =
        await _apiConsumer.get("http://10.0.2.2:8000/api/news/index");
    return GetNewsEntity.fromJson(response);
  }
}
