import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/data/Model/getsubsectionsentity.dart';
import 'package:injectable/injectable.dart';

abstract class GetSubSectionsWebService {
  Future<GetSubSectionsEntity> getsubsections(int sectionId);
}

@Singleton(as: GetSubSectionsWebService)
class GetSubSectionsWebServiceImpl implements GetSubSectionsWebService {
  final ApiConsumer _apiConsumer;

  GetSubSectionsWebServiceImpl(this._apiConsumer);

  @override
  Future<GetSubSectionsEntity> getsubsections(int sectionId) async {
    final response = await _apiConsumer
        .get("http://10.0.2.2:8000/api/section_subsections/$sectionId");

    return GetSubSectionsEntity.fromJson(response);
  }
}
