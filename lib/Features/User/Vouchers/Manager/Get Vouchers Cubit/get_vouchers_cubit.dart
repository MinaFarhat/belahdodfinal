import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/Vouchers/data/Model/getvouchersentity.dart';
import 'package:belahododfinal/Features/User/Vouchers/data/Repository/Get%20Vouchers%20Repository/baserepositorygetvouchers.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_vouchers_state.dart';
part 'get_vouchers_cubit.freezed.dart';

@injectable
class GetVouchersCubit extends Cubit<GetVouchersState> {
  GetVouchersCubit(this._baseRepositoryGetVouchers)
      : super(const GetVouchersState.initial());
  final BaseRepositoryGetVouchers _baseRepositoryGetVouchers;

  Future<void> getVouchers() async {
    emit(const GetVouchersState.loading());

    final response = await _baseRepositoryGetVouchers.vouchers();

    response.fold((l) => emit(GetVouchersState.error(l)),
        (r) => emit(GetVouchersState.success(r)));
  }
}
