part of 'on_arrival_cubit.dart';

@freezed
class OnArrivalState with _$OnArrivalState {
  const factory OnArrivalState.initial() = _Initial;
  const factory OnArrivalState.loading() = _Loading;
  const factory OnArrivalState.success(OnArrivalEntity omarrivalentity) =
      _Success;
  const factory OnArrivalState.error(NetworkExceptions networkExceptions) =
      _Error;
}
