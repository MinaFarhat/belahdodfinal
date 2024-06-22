part of 'quraan_cubit.dart';

@freezed
class QuraanState with _$QuraanState {
  const factory QuraanState.initial() = _Initial;
  const factory QuraanState.loading() = _Loading;
  const factory QuraanState.success(QuraanEntity quraanentity) = _Success;
  const factory QuraanState.error(NetworkExceptions networkExceptions) = _Error;
}
