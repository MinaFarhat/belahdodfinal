part of 'stationery_visitor_cubit.dart';

@freezed
class StationeryVisitorState with _$StationeryVisitorState {
  const factory StationeryVisitorState.initial() = _Initial;
  const factory StationeryVisitorState.loading() = _Loading;
  const factory StationeryVisitorState.success(
      StationeryVisitorEntity stationeryvisitorentity) = _Success;
  const factory StationeryVisitorState.error(
      NetworkExceptions networkExceptions) = _Error;
}
