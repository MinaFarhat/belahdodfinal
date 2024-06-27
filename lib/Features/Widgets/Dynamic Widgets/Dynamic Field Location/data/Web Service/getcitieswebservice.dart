import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Features/Widgets/Dynamic%20Widgets/Dynamic%20Field%20Location/data/Model/getcitiesentity.dart';
import 'package:injectable/injectable.dart';

abstract class GetCitiesWebService {
  Future<GetCitiesEntity> cities();
}

@Singleton(as: GetCitiesWebService)
class GetCitiesWebServiceImpl implements GetCitiesWebService {
  final ApiConsumer _apiConsumer;

  GetCitiesWebServiceImpl(this._apiConsumer);

  @override
  Future<GetCitiesEntity> cities() async {
    final response = await _apiConsumer.get("http://10.0.2.2:8000/api/city");
    return GetCitiesEntity.fromJson(response);
  }
}
