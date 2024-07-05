import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Core/api/end_points.dart';
import 'package:belahododfinal/Features/Auth/Login/data/Model/loginentity.dart';
import 'package:injectable/injectable.dart';

abstract class LoginWebService {
  Future<LoginEntity> login(
    String name,
    String password,
  );
}

@Singleton(as: LoginWebService)
class LoginWebServiceImpl implements LoginWebService {
  final ApiConsumer _apiConsumer;

  LoginWebServiceImpl(this._apiConsumer);

  @override
  Future<LoginEntity> login(String name, String password) async {
    final response = await _apiConsumer.post(
      EndPoints.loginUrl,
      body: {
        "name": name,
        "password": password,
      },
    );
    return LoginEntity.fromJson(response);
  }
}
