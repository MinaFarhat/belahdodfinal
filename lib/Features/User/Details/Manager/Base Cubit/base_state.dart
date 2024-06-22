part of 'base_cubit.dart';

@freezed
class BaseState with _$BaseState {
 const factory BaseState.initial() = _Initial;
  const factory BaseState.loading() = _Loading;
  const factory BaseState.success(BaseEntity baseentity) = _Success;
  const factory BaseState.error(NetworkExceptions networkExceptions) = _Error;
}
