part of 'get_vouchers_cubit.dart';

@freezed
class GetVouchersState with _$GetVouchersState {
  const factory GetVouchersState.initial() = _Initial;
  const factory GetVouchersState.loading() = _Loading;
  const factory GetVouchersState.success(GetVouchersEntity getvoucherentity) =
      _Success;
  const factory GetVouchersState.error(NetworkExceptions networkExceptions) =
      _Error;
}
