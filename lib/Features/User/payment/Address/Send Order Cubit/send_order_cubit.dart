import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/payment/Address/data/Model/sendorderentity.dart';
import 'package:belahododfinal/Features/User/payment/Address/data/Repository/baserepositorysendorder.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'send_order_state.dart';
part 'send_order_cubit.freezed.dart';

@injectable
class SendOrderCubit extends Cubit<SendOrderState> {
  SendOrderCubit(this._baseRepositorySendOrder)
      : super(const SendOrderState.initial());

  final BaseRepositorySendOrder _baseRepositorySendOrder;

  Future<void> sendOrder(int cityId, String address, String? notes) async {
    emit(const SendOrderState.loading());

    final response =
        await _baseRepositorySendOrder.sendOrder(cityId, address, notes);

    response.fold((l) => emit(SendOrderState.error(l)),
        (r) => emit(SendOrderState.success(r)));
  }
}
