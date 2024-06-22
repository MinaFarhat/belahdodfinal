import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Features/User/Details/data/Model/stationeryentity.dart';
import 'package:injectable/injectable.dart';

abstract class StationeryWebService {
  Future<StationeryEntity> stationeryDetails(int productID);
}

@Singleton(as: StationeryWebService)
class StationeryWebServiceImpl implements StationeryWebService {
  final ApiConsumer _apiConsumer;

  StationeryWebServiceImpl(this._apiConsumer);

  @override
  Future<StationeryEntity> stationeryDetails(int productID) async {
    final response =
        await _apiConsumer.get("http://10.0.2.2:8000/api/products/$productID");

    return StationeryEntity.fromJson(response);
  }
}
