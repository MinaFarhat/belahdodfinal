import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/favorite/data/Model/addtofavoriteentity.dart';
import 'package:dartz/dartz.dart';

abstract class BaseRepositoryAddToFavorites {
  Future<Either<NetworkExceptions, AddToFavoritesEntity>> addtofavorites(
      int favoriteProductId);
}
