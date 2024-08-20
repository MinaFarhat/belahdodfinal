import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Core/api/end_points.dart';
import 'package:belahododfinal/Features/Auth/Is%20Client/data/model/iscliententity.dart';
import 'package:injectable/injectable.dart';

abstract class IsClientWebService {
  Future<IsClientEntity> isClient();
}

@Singleton(as: IsClientWebService)
class IsClientWebServiceImpl implements IsClientWebService {
  final ApiConsumer _apiConsumer;

  IsClientWebServiceImpl(this._apiConsumer);

  @override
  Future<IsClientEntity> isClient() async {
    final response = await _apiConsumer.get(EndPoints.isClientUrl);

    return IsClientEntity.fromJson(response);
  }
}
