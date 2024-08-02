part of 'get_user_info_cubit.dart';

@freezed
class GetUserInfoState with _$GetUserInfoState {
  const factory GetUserInfoState.initial() = _Initial;
  const factory GetUserInfoState.loading() = _Loading;
  const factory GetUserInfoState.success(GetUserInfoEntity getuserinfoentity) =
      _Success;
  const factory GetUserInfoState.error(NetworkExceptions networkExceptions) =
      _Error;
}
