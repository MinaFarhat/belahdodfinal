import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/payment/Payment%20Methods/data/Model/paybyvoucherentity.dart';
import 'package:belahododfinal/Features/User/payment/Payment%20Methods/data/Repository/Pay%20By%20Voucher/baserepositorypaybyvoucher.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'pay_by_voucher_state.dart';
part 'pay_by_voucher_cubit.freezed.dart';

@injectable
class PayByVoucherCubit extends Cubit<PayByVoucherState> {
  PayByVoucherCubit(this._baseRepositoryPayByVoucher)
      : super(const PayByVoucherState.initial());

  final BaseRepositoryPayByVoucher _baseRepositoryPayByVoucher;

  Future<void> payByVoucher(int orderId, int voucherId) async {
    emit(const PayByVoucherState.loading());

    final response =
        await _baseRepositoryPayByVoucher.payByVoucher(orderId, voucherId);

    response.fold((l) => emit(PayByVoucherState.error(l)),
        (r) => emit(PayByVoucherState.success(r)));
  }
}
