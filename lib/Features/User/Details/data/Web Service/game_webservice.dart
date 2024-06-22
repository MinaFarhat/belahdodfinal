import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Features/User/Details/data/Model/gameentity.dart';
import 'package:injectable/injectable.dart';

abstract class GameWebService {
  Future<GameEntity> gameDetails(int productID);
}

@Singleton(as: GameWebService)
class GameWebServiceImpl implements GameWebService {
  final ApiConsumer _apiConsumer;

  GameWebServiceImpl(this._apiConsumer);

  @override
  Future<GameEntity> gameDetails(int productID) async {
    final response =
        await _apiConsumer.get("http://10.0.2.2:8000/api/products/$productID");

    return GameEntity.fromJson(response);
  }
}
