part of 'quantitiyupdate_cubit.dart';

@freezed
class QuantitiyupdateState with _$QuantitiyupdateState {
  const factory QuantitiyupdateState.initial() = _Initial;
  const factory QuantitiyupdateState.loading() = _Loading;
  const factory QuantitiyupdateState.success(QuantityUpdateEntity quantittupdateentity) = _Success;
  const factory QuantitiyupdateState.error(
      NetworkExceptions networkExceptions) = _Error;
}
