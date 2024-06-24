import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Features/User/favorite/data/Model/addtofavoriteentity.dart';
import 'package:injectable/injectable.dart';

abstract class AddToFavoritesWebService {
  Future<AddToFavoritesEntity> addtofavorite(int favoriteProductId);
}

@Singleton(as: AddToFavoritesWebService)
class AddToFavoriteWebServiceImpl implements AddToFavoritesWebService {
  final ApiConsumer _apiConsumer;

  AddToFavoriteWebServiceImpl(this._apiConsumer);

  @override
  Future<AddToFavoritesEntity> addtofavorite(int favoriteProductId) async {
    final response = await _apiConsumer
        .post("http://10.0.2.2:8000/api/favorite-products/$favoriteProductId");
    return AddToFavoritesEntity.fromJson(response);
  }
}
