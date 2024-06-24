part of 'cartitems_cubit.dart';

@freezed
class CartitemsState with _$CartitemsState {
 const factory CartitemsState.initial() = _Initial;
  const factory CartitemsState.loading() = _Loading;
  const factory CartitemsState.success(GetCartItemsEntity getcartitemsentity) =
      _Success;
  const factory CartitemsState.error(NetworkExceptions networkExceptions) =
      _Error;
}
