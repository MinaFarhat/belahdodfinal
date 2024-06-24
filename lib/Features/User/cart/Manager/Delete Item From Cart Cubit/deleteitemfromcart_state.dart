part of 'deleteitemfromcart_cubit.dart';

@freezed
class DeleteitemfromcartState with _$DeleteitemfromcartState {
  const factory DeleteitemfromcartState.initial() = _Initial;
  const factory DeleteitemfromcartState.loading() = _Loading;
  const factory DeleteitemfromcartState.success(DeleteItemFromCartEntity deleteitemfromcartentity) =
      _Success;
  const factory DeleteitemfromcartState.error(NetworkExceptions networkExceptions) =
      _Error;
}
