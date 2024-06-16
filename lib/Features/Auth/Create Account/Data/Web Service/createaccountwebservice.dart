import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:injectable/injectable.dart';
import 'package:belahododfinal/Features/Auth/Create%20Account/Data/Model/createaccountentity.dart';

abstract class CreateAccountWebService {
  Future<CreateAccountEntity> createaccount(
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
  Future<CreateAccountEntity> createaccount(String name, String password,
      String phoneNumber, String city, String address) async {
    final response =
        await _apiConsumer.post("http://127.0.0.1:8000/api/register", body: {
      "name": name,
      "password": password,
      "phone_number": phoneNumber,
      "city": city,
      "address": address,
    });

    return response;
  }
}
