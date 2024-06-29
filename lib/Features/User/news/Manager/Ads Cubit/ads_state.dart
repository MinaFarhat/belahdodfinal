part of 'ads_cubit.dart';

@freezed
class AdsState with _$AdsState {
  const factory AdsState.initial() = _Initial;
  const factory AdsState.loading() = _Loading;
  const factory AdsState.success(GetAdsEntity getadsentity) = _Success;
  const factory AdsState.error(NetworkExceptions networkExceptions) = _Error;
}
