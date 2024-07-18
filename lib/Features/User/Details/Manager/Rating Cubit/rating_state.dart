part of 'rating_cubit.dart';

@freezed
class RatingState with _$RatingState {
  const factory RatingState.initial() = _Initial;
  const factory RatingState.loading() = _Loading;
  const factory RatingState.success(RatingEntity ratingentity) = _Success;
  const factory RatingState.error(NetworkExceptions networkExceptions) = _Error;
}
