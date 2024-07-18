part of 'like_cubit.dart';

@freezed
class LikeState with _$LikeState {
  const factory LikeState.initial() = _Initial;
  const factory LikeState.loading() = _Loading;
  const factory LikeState.success(LikeEntity likeentity) = _Success;
  const factory LikeState.error(NetworkExceptions networkExceptions) = _Error;
}
