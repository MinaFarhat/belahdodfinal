part of 'check_balance_cubit.dart';

@freezed
class CheckBalanceState with _$CheckBalanceState {
  const factory CheckBalanceState.initial() = _Initial;
  const factory CheckBalanceState.loading() = _Loading;
  const factory CheckBalanceState.success(
      CheckBalanceEntity checkbalanceentity) = _Success;
  const factory CheckBalanceState.error(NetworkExceptions networkExceptions) =
      _Error;
}
