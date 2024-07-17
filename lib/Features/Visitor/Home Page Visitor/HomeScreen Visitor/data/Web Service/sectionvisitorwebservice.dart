import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Core/api/end_points.dart';
import 'package:belahododfinal/Features/Visitor/Home%20Page%20Visitor/HomeScreen%20Visitor/data/Model/sectionvisitorentity.dart';
import 'package:injectable/injectable.dart';

abstract class SectionVisitorWebService {
  Future<SectionVisitorEntity> sectionsVisitor();
}

@Singleton(as: SectionVisitorWebService)
class SectionVisitorWebServiceImpl implements SectionVisitorWebService {
  final ApiConsumer _apiConsumer;

  SectionVisitorWebServiceImpl(this._apiConsumer);

  @override
  Future<SectionVisitorEntity> sectionsVisitor() async {
    final response =
        await _apiConsumer.get(EndPoints.getSectionAndProductsVisitorUrl);

    return SectionVisitorEntity.fromJson(response);
  }
}
