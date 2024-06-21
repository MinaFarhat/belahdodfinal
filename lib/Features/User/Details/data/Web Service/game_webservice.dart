import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Features/User/Details/data/Model/gameentity.dart';
import 'package:belahododfinal/Features/User/homepage/HomeScreen/data/Model/productentity.dart';
import 'package:injectable/injectable.dart';

abstract class GameWebService {
  Future<GameEntity> gameDetails();
}

@Singleton(as: GameWebService)
class GameWebServiceImpl implements GameWebService {
  final ApiConsumer _apiConsumer;
  final ProductEntity _productentity;
  GameWebServiceImpl(this._apiConsumer, this._productentity);

  @override
  Future<GameEntity> gameDetails() async {
    final response = await _apiConsumer
        .get("http://localhost:8000/api/products/${_productentity.id}");

    return GameEntity.fromJson(response);
  }
}
