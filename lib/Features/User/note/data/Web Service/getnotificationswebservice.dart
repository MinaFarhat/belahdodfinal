import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Features/User/note/data/Model/getnotificationsentity.dart';
import 'package:injectable/injectable.dart';

abstract class GetNotificationsWebService {
  Future<GetNotificationsEntity> getNotifications();
}

@Singleton(as: GetNotificationsWebService)
class GetNotificationsWebServiceImpl implements GetNotificationsWebService {
  final ApiConsumer _apiConsumer;

  GetNotificationsWebServiceImpl(this._apiConsumer);

  @override
  Future<GetNotificationsEntity> getNotifications() async {
    final response = await _apiConsumer.get("http://10.0.2.2:8000/api/notification/index");
    return GetNotificationsEntity.fromJson(response);
  }
}
