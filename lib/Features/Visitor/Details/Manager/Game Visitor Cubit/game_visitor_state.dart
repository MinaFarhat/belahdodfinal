part of 'game_visitor_cubit.dart';

@freezed
class GameVisitorState with _$GameVisitorState {
  const factory GameVisitorState.initial() = _Initial;
  const factory GameVisitorState.loading() = _Loading;
  const factory GameVisitorState.success(GameVisitorEntity gamevisitorentity) =
      _Success;
  const factory GameVisitorState.error(NetworkExceptions networkExceptions) =
      _Error;
}
