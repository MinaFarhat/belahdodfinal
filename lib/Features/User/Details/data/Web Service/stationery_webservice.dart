import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Features/User/Details/data/Model/stationeryentity.dart';
import 'package:belahododfinal/Features/User/homepage/HomeScreen/data/Model/productentity.dart';
import 'package:injectable/injectable.dart';

abstract class StationeryWebService {
  Future<StationeryEntity> stationeryDetails();
}

@Singleton(as: StationeryWebService)
class StationeryWebServiceImpl implements StationeryWebService {
  final ApiConsumer _apiConsumer;
  final ProductEntity _productentity;
  StationeryWebServiceImpl(this._apiConsumer, this._productentity);

  @override
  Future<StationeryEntity> stationeryDetails() async {
    final response = await _apiConsumer
        .get("http://localhost:8000/api/products/${_productentity.id}");

    return StationeryEntity.fromJson(response);
  }
}
