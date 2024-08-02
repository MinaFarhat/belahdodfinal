part of 'update_user_info_cubit.dart';

@freezed
class UpdateUserInfoState with _$UpdateUserInfoState {
  const factory UpdateUserInfoState.initial() = _Initial;
  const factory UpdateUserInfoState.loading() = _Loading;
  const factory UpdateUserInfoState.success(
      UpdateUserInfoEntity updateuserinfoentity) = _Success;
  const factory UpdateUserInfoState.error(NetworkExceptions networkExceptions) =
      _Error;
}
