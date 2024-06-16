import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:injectable/injectable.dart';

abstract class CreateAccountWebService {
  Future<void> createaccount(
    String name,
    String password,
    String phoneNumber,
    String city,
    String address,
  );
}

@Singleton(as: CreateAccountWebService)
class CreateAccountWebServiceImpl implements CreateAccountWebService {
  final ApiConsumer _apiConsumer;

  CreateAccountWebServiceImpl(this._apiConsumer);

  @override
  Future<void> createaccount(String name, String password, String phoneNumber,
      String city, String address) async {
    // ignore: unused_local_variable
    final response =
        await _apiConsumer.post("http://10.0.2.2:8000/api/register", body: {
      "name": name,
      "password": password,
      "phone_number": phoneNumber,
      "city": city,
      "address": address,
    });
  }
}
