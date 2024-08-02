import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Core/api/end_points.dart';
import 'package:belahododfinal/Features/User/profile/data/Model/getuserinfo2entity.dart';
import 'package:injectable/injectable.dart';

abstract class GetUserInfo2WebService {
  Future<GetUserInfo2Entity> userInfo2();
}

@Singleton(as: GetUserInfo2WebService)
class GetUserInfo2WebServiceImpl implements GetUserInfo2WebService {
  final ApiConsumer _apiConsumer;

  GetUserInfo2WebServiceImpl(this._apiConsumer);

  @override
  Future<GetUserInfo2Entity> userInfo2() async {
    final response = await _apiConsumer.get(EndPoints.userInfo2Url);

    return GetUserInfo2Entity.fromJson(response);
  }
}
