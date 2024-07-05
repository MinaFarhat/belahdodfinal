import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Core/api/end_points.dart';
import 'package:belahododfinal/Features/User/news/data/Model/detailsofoffer.dart';
import 'package:injectable/injectable.dart';

abstract class DetailsofOfferWebService {
  Future<DetailsofOfferEntity> detailsOfOffer(int offerId);
}

@Singleton(as: DetailsofOfferWebService)
class DetailsofOfferWebServiceImpl implements DetailsofOfferWebService {
  final ApiConsumer _apiConsumer;

  DetailsofOfferWebServiceImpl(this._apiConsumer);

  @override
  Future<DetailsofOfferEntity> detailsOfOffer(int offerId) async {
    final response = await _apiConsumer
        .get(EndPoints.getDetailsOfOfferUrl + offerId.toString());
    return DetailsofOfferEntity.fromJson(response);
  }
}
