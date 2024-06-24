part of 'addtofavorite_cubit.dart';

@freezed
class AddtofavoriteState with _$AddtofavoriteState {
  const factory AddtofavoriteState.initial() = _Initial;
  const factory AddtofavoriteState.loading() = _Loading;
  const factory AddtofavoriteState.success(
      AddToFavoritesEntity addtofavoritesentity) = _Success;
  const factory AddtofavoriteState.error(NetworkExceptions networkExceptions) =
      _Error;
}
