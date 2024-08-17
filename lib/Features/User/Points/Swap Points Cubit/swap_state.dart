part of 'swap_cubit.dart';

@freezed
class SwapState with _$SwapState {
  const factory SwapState.initial() = _Initial;
  const factory SwapState.loading() = _Loading;
  const factory SwapState.success(SwapEntity swapentity) = _Success;
  const factory SwapState.error(NetworkExceptions networkExceptions) = _Error;
}
