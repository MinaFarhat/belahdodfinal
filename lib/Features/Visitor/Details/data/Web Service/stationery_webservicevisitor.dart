import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Core/api/end_points.dart';
import 'package:belahododfinal/Features/Visitor/Details/data/Model/stationeryvisitorentity.dart';
import 'package:injectable/injectable.dart';

abstract class StationeryWebServiceVisitor {
  Future<StationeryVisitorEntity> stationeryDetailsVisitor(int productID);
}

@Singleton(as: StationeryWebServiceVisitor)
class StationeryWebServiceVisitorImpl implements StationeryWebServiceVisitor {
  final ApiConsumer _apiConsumer;

  StationeryWebServiceVisitorImpl(this._apiConsumer);

  @override
  Future<StationeryVisitorEntity> stationeryDetailsVisitor(
      int productID) async {
    final response = await _apiConsumer
        .get(EndPoints.productDetailsVisitorUrl + productID.toString());

    return StationeryVisitorEntity.fromJson(response);
  }
}
