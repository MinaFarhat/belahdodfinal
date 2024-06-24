import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Presentation/Products%20Of%20SubSections/data/Model/getproductsofsubsectionentity.dart';
import 'package:injectable/injectable.dart';

abstract class GetProductsofSubSectionWebService {
  Future<GetProductsofSubSectionEntity> getproductsofsubsection(
      int subSectionId);
}

@Singleton(as: GetProductsofSubSectionWebService)
class GetProductsofSubSectionWebServiceImpl
    implements GetProductsofSubSectionWebService {
  final ApiConsumer _apiConsumer;

  GetProductsofSubSectionWebServiceImpl(this._apiConsumer);

  @override
  Future<GetProductsofSubSectionEntity> getproductsofsubsection(
      int subSectionId) async {
    final response = await _apiConsumer
        .get("http://10.0.2.2:8000/api/products/by-subsection/$subSectionId");
    return GetProductsofSubSectionEntity.fromJson(response);
  }
}
