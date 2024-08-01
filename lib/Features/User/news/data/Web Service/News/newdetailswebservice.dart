import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Core/api/end_points.dart';
import 'package:belahododfinal/Features/User/news/data/Model/getnewdetailsentity.dart';
import 'package:injectable/injectable.dart';

abstract class NewDetailsWebService {
  Future<GetNewDetailsEntity> getNewDetails(int newId);
}

@Singleton(as: NewDetailsWebService)
class NewDetailsWebServiceImpl implements NewDetailsWebService {
  final ApiConsumer _apiConsumer;

  NewDetailsWebServiceImpl(this._apiConsumer);

  @override
  Future<GetNewDetailsEntity> getNewDetails(int newIndex) async {
    final response =
        await _apiConsumer.get("${EndPoints.getNewDetailsUrl}" "$newIndex");
    return GetNewDetailsEntity.fromJson(response);
  }
}
