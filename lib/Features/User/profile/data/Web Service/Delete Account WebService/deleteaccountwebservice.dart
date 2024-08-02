import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Core/api/end_points.dart';
import 'package:belahododfinal/Features/User/profile/data/Model/deleteaccountentity.dart';
import 'package:injectable/injectable.dart';

abstract class DeleteAccountWebService {
  Future<DeleteAccountEntity> deleteAccount();
}

@Singleton(as: DeleteAccountWebService)
class DeleteAccountWebServiceImpl implements DeleteAccountWebService {
  final ApiConsumer _apiConsumer;

  DeleteAccountWebServiceImpl(this._apiConsumer);

  @override
  Future<DeleteAccountEntity> deleteAccount() async {
    final response = await _apiConsumer.delete(EndPoints.deleteAccountUrl);

    return DeleteAccountEntity.fromJson(response);
  }
}
