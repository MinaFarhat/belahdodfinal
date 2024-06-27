part of 'get_orders_cubit.dart';

@freezed
class GetOrdersState with _$GetOrdersState {
  const factory GetOrdersState.initial() = _Initial;
  const factory GetOrdersState.loading() = _Loading;
  const factory GetOrdersState.success(GetOrdersEntity getordersentity) =
      _Success;
  const factory GetOrdersState.error(NetworkExceptions networkExceptions) =
      _Error;
}
