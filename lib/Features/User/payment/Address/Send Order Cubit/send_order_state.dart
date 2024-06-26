part of 'send_order_cubit.dart';

@freezed
class SendOrderState with _$SendOrderState {
  const factory SendOrderState.initial() = _Initial;
  const factory SendOrderState.loading() = _Loading;
  const factory SendOrderState.success(SendOrderEntity sendorderentity) =
      _Success;
  const factory SendOrderState.error(NetworkExceptions networkExceptions) =
      _Error;
}
