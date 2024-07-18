part of 'dis_like_cubit.dart';

@freezed
class DisLikeState with _$DisLikeState {
  const factory DisLikeState.initial() = _Initial;
  const factory DisLikeState.loading() = _Loading;
  const factory DisLikeState.success(DisLikeEntity dislikeentity) = _Success;
  const factory DisLikeState.error(NetworkExceptions networkExceptions) =
      _Error;
}
