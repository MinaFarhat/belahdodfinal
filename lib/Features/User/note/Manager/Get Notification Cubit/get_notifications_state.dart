part of 'get_notifications_cubit.dart';

@freezed
class GetNotificationsState with _$GetNotificationsState {
  const factory GetNotificationsState.initial() = _Initial;
  const factory GetNotificationsState.loading() = _Loading;
  const factory GetNotificationsState.success(
      GetNotificationsEntity getnotificationsentity) = _Success;
  const factory GetNotificationsState.error(
      NetworkExceptions networkExceptions) = _Error;
}
