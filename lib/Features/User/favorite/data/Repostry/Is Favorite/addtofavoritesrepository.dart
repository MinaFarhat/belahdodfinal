import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/favorite/data/Model/addtofavoriteentity.dart';
import 'package:belahododfinal/Features/User/favorite/data/Repostry/Is%20Favorite/baserepositoryaddtofavorites.dart';
import 'package:belahododfinal/Features/User/favorite/data/Web%20Service/Is%20Favorite/addtofavoritewebservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositoryAddToFavorites)
class AddToFavoritesRepositoryImpl implements BaseRepositoryAddToFavorites {
  final NetworkInfo _networkInfo;
  final AddToFavoritesWebService _addToFavoriteWebService;

  AddToFavoritesRepositoryImpl(
      {required NetworkInfo networkInfo,
      required AddToFavoritesWebService addToFavoriteWebService})
      : _networkInfo = networkInfo,
        _addToFavoriteWebService = addToFavoriteWebService;

  @override
  Future<Either<NetworkExceptions, AddToFavoritesEntity>> addtofavorites(
      int favoriteProductId) async {
    if (await _networkInfo.isConnected) {
      try {
        final response =
            await _addToFavoriteWebService.addtofavorite(favoriteProductId);

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
