part of 'getalloffers_cubit.dart';

@freezed
class GetalloffersState with _$GetalloffersState {
  const factory GetalloffersState.initial() = _Initial;
  const factory GetalloffersState.loading() = _Loading;
  const factory GetalloffersState.success(
      GetAllOffersEntity getalloffersentity) = _Success;
  const factory GetalloffersState.error(NetworkExceptions networkExceptions) =
      _Error;
}
