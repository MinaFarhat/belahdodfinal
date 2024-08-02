part of 'get_user_info2_cubit.dart';

@freezed
class GetUserInfo2State with _$GetUserInfo2State {
  const factory GetUserInfo2State.initial() = _Initial;
  const factory GetUserInfo2State.loading() = _Loading;
  const factory GetUserInfo2State.success(
      GetUserInfo2Entity getuserinfo2entity) = _Success;
  const factory GetUserInfo2State.error(NetworkExceptions networkExceptions) =
      _Error;
}
