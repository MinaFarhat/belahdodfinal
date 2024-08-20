part of 'is_client_cubit.dart';

@freezed
class IsClientState with _$IsClientState {
  const factory IsClientState.initial() = _Initial;
  const factory IsClientState.loading() = _Loading;
  const factory IsClientState.success(IsClientEntity iscliententity) = _Success;
  const factory IsClientState.error(NetworkExceptions networkExceptions) =
      _Error;
}
