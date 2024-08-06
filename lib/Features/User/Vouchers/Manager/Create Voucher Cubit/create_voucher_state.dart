part of 'create_voucher_cubit.dart';

@freezed
class CreateVoucherState with _$CreateVoucherState {
  const factory CreateVoucherState.initial() = _Initial;
  const factory CreateVoucherState.loading() = _Loading;
  const factory CreateVoucherState.success(
      CreateVoucherEntity createvoucherentity) = _Success;
  const factory CreateVoucherState.error(NetworkExceptions networkExceptions) =
      _Error;
}
