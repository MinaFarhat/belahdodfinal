import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/favorite/data/Model/getfavoritesentity.dart';
import 'package:dartz/dartz.dart';

abstract class BaseRepositoryGetFavorites{
  Future<Either<NetworkExceptions, GetFavoritesEntity>> favorites();
}
