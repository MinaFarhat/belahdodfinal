import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Features/User/news/data/Model/getalloffersentity.dart';
import 'package:injectable/injectable.dart';

abstract class GetAllOffersWebService {
  Future<GetAllOffersEntity> offers();
}

@Singleton(as: GetAllOffersWebService)
class GetAllOffersWebServiceImpl implements GetAllOffersWebService {
  final ApiConsumer _apiConsumer;

  GetAllOffersWebServiceImpl(this._apiConsumer);

  @override
  Future<GetAllOffersEntity> offers() async {
    final response =
        await _apiConsumer.get("http://10.0.2.2:8000/api/offer/index");
    return GetAllOffersEntity.fromJson(response);
  }
}
