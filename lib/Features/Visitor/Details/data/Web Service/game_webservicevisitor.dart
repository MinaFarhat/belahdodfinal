import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Core/api/end_points.dart';
import 'package:belahododfinal/Features/Visitor/Details/data/Model/gamevisitorentity.dart';
import 'package:injectable/injectable.dart';

abstract class GameWebServiceVisitor {
  Future<GameVisitorEntity> gameDetailsVisitor(int productID);
}

@Singleton(as: GameWebServiceVisitor)
class GameWebServiceVisitorImpl implements GameWebServiceVisitor {
  final ApiConsumer _apiConsumer;

  GameWebServiceVisitorImpl(this._apiConsumer);

  @override
  Future<GameVisitorEntity> gameDetailsVisitor(int productID) async {
    final response = await _apiConsumer
        .get(EndPoints.productDetailsVisitorUrl + productID.toString());
    return GameVisitorEntity.fromJson(response);
  }
}
