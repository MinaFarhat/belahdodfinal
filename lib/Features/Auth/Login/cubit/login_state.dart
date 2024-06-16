part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = _Loading;
  const factory LoginState.success(
          LoginEntity loginEntity) =
      _Success;
  const factory LoginState.error(
      NetworkExceptions networkExceptions) = _Error;
}
