part of 'wallet_cubit.dart';

@freezed
class WalletState with _$WalletState {
  const factory WalletState.initial() = _Initial;
  const factory WalletState.loading() = _Loading;
  const factory WalletState.success(WalletEntity walletentity) = _Success;
  const factory WalletState.error(NetworkExceptions networkExceptions) = _Error;
}
