part of 'game_cubit.dart';

@freezed
class GameState with _$GameState {
  const factory GameState.initial() = _Initial;
  const factory GameState.loading() = _Loading;
  const factory GameState.success(GameEntity gameentity) = _Success;
  const factory GameState.error(NetworkExceptions networkExceptions) = _Error;
}
