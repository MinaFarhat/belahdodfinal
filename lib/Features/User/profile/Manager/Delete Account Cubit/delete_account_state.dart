part of 'delete_account_cubit.dart';

@freezed
class DeleteAccountState with _$DeleteAccountState {
  const factory DeleteAccountState.initial() = _Initial;
  const factory DeleteAccountState.loading() = _Loading;
  const factory DeleteAccountState.success(
      DeleteAccountEntity deleteaccountentity) = _Success;
  const factory DeleteAccountState.error(NetworkExceptions networkExceptions) =
      _Error;
}
