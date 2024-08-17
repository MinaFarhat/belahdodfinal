part of 'add_balance_cubit.dart';

@freezed
class AddBalanceState with _$AddBalanceState {
  const factory AddBalanceState.initial() = _Initial;
  const factory AddBalanceState.loading() = _Loading;
  const factory AddBalanceState.success(AddBalanceEntity addbalanceentity) =
      _Success;
  const factory AddBalanceState.error(NetworkExceptions networkExceptions) =
      _Error;
}
