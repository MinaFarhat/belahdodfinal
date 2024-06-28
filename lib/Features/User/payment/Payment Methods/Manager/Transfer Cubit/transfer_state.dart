part of 'transfer_cubit.dart';

@freezed
class TransferState with _$TransferState {
  const factory TransferState.initial() = _Initial;
  const factory TransferState.loading() = _Loading;
  const factory TransferState.success(TransferEntity transferentity) = _Success;
  const factory TransferState.error(NetworkExceptions networkExceptions) =
      _Error;
}
