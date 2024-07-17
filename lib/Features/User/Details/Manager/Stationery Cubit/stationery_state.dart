part of 'stationery_cubit.dart';

@freezed
class StationeryState with _$StationeryState {
  const factory StationeryState.initial() = _Initial;
  const factory StationeryState.loading() = _Loading;
  const factory StationeryState.success(StationeryEntity stationeryentity) =
      _Success;
  const factory StationeryState.error(NetworkExceptions networkExceptions) =
      _Error;
}
