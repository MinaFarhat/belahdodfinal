part of 'getfavorites_cubit.dart';

@freezed
class GetfavoritesState with _$GetfavoritesState {
  const factory GetfavoritesState.initial() = _Initial;
  const factory GetfavoritesState.loading() = _Loading;
  const factory GetfavoritesState.success(
      GetFavoritesEntity getfavoritesentity) = _Success;
  const factory GetfavoritesState.error(NetworkExceptions networkExceptions) =
      _Error;
}
