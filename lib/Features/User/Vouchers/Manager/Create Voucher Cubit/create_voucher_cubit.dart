import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/Vouchers/data/Model/createvoucherentity.dart';
import 'package:belahododfinal/Features/User/Vouchers/data/Repository/Create%20Voucher%20Repository/baserepositorycreatevoucher.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_voucher_state.dart';
part 'create_voucher_cubit.freezed.dart';

@injectable
class CreateVoucherCubit extends Cubit<CreateVoucherState> {
  CreateVoucherCubit(this._baseRepositoryCreateVoucher)
      : super(const CreateVoucherState.initial());

  final BaseRepositoryCreateVoucher _baseRepositoryCreateVoucher;

  Future<void> createVoucher(
      int totalValue, String? notes, String phoneNumber) async {
    emit(const CreateVoucherState.loading());

    final response = await _baseRepositoryCreateVoucher.createVoucher(
        totalValue, notes, phoneNumber);

    response.fold((l) => emit(CreateVoucherState.error(l)),
        (r) => emit(CreateVoucherState.success(r)));
  }
}
