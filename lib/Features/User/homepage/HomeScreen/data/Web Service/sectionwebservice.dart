import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Core/api/end_points.dart';
import 'package:belahododfinal/Features/User/homepage/HomeScreen/data/Model/sectionentity.dart';
import 'package:injectable/injectable.dart';

abstract class SectionWebService {
  Future<SectionEntity> sections();
}

@Singleton(as: SectionWebService)
class SectionWebServiceImpl implements SectionWebService {
  final ApiConsumer _apiConsumer;

  SectionWebServiceImpl(this._apiConsumer);

  @override
  Future<SectionEntity> sections() async {
    final response =
        await _apiConsumer.get(EndPoints.getSectionsAndProductsUrl);

    return SectionEntity.fromJson(response);
  }
}
