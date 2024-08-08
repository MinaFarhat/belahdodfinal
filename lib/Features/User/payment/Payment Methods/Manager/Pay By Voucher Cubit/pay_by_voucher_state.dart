part of 'pay_by_voucher_cubit.dart';

@freezed
class PayByVoucherState with _$PayByVoucherState {
  const factory PayByVoucherState.initial() = _Initial;
  const factory PayByVoucherState.loading() = _Loading;
  const factory PayByVoucherState.success(
      PayByVoucherEntity paybyvoucherentity) = _Success;
  const factory PayByVoucherState.error(NetworkExceptions networkExceptions) =
      _Error;
}
