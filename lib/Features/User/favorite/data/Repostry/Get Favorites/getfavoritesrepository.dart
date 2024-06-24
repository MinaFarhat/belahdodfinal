import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/favorite/data/Model/getfavoritesentity.dart';
import 'package:belahododfinal/Features/User/favorite/data/Repostry/Get%20Favorites/baserepositorygetfavorites.dart';
import 'package:belahododfinal/Features/User/favorite/data/Web%20Service/Get%20Favorites/getfavoriteswebservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositoryGetFavorites)
class GetFavoritesRepositoryImpl implements BaseRepositoryGetFavorites {
  final NetworkInfo _networkInfo;
  final GetFavoritesWebService _getFavoritesWebService;

  GetFavoritesRepositoryImpl(
      {required NetworkInfo networkInfo,
      required GetFavoritesWebService getFavoritesWebService})
      : _networkInfo = networkInfo,
        _getFavoritesWebService = getFavoritesWebService;

  @override
  Future<Either<NetworkExceptions, GetFavoritesEntity>> favorites() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _getFavoritesWebService.favorites();

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
