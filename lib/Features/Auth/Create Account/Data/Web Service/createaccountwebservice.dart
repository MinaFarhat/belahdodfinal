import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Core/api/end_points.dart';
import 'package:injectable/injectable.dart';

abstract class CreateAccountWebService {
  Future<void> createaccount(
    String name,
    String password,
    String confirmPassword,
    String phoneNumber,
    String city,
    String address,
    String role,
  );
}

@Singleton(as: CreateAccountWebService)
class CreateAccountWebServiceImpl implements CreateAccountWebService {
  final ApiConsumer _apiConsumer;

  CreateAccountWebServiceImpl(this._apiConsumer);

  @override
  Future<void> createaccount(
    String name,
    String password,
    String confirmPassword,
    String phoneNumber,
    String city,
    String address,
    String role,
  ) async {
    // ignore: unused_local_variable
    final response = await _apiConsumer.post(
      EndPoints.createAccountUrl,
      body: {
        "name": name,
        "password": password,
        "password_confirmation": confirmPassword,
        "phone_number": phoneNumber,
        "city": city,
        "address": address,
        "role": role,
      },
    );
  }
}
