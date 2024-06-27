part of 'order_details_cubit.dart';

@freezed
class OrderDetailsState with _$OrderDetailsState {
  const factory OrderDetailsState.initial() = _Initial;
  const factory OrderDetailsState.loading() = _Loading;
  const factory OrderDetailsState.success(
      OrderDetailsEntity orderdetailsentity) = _Success;
  const factory OrderDetailsState.error(NetworkExceptions networkExceptions) =
      _Error;
}
