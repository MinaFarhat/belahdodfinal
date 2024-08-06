import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/payment/Payment%20Methods/data/Model/checkbalanceentity.dart';
import 'package:belahododfinal/Features/User/payment/Payment%20Methods/data/Repository/Check%20Balance/baserepositorycheckbalance.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'check_balance_state.dart';
part 'check_balance_cubit.freezed.dart';

@injectable
class CheckBalanceCubit extends Cubit<CheckBalanceState> {
  CheckBalanceCubit(this._baseRepositoryCheckBalance)
      : super(const CheckBalanceState.initial());
  final BaseRepositoryCheckBalance _baseRepositoryCheckBalance;

  Future<void> checkBalance() async {
    emit(const CheckBalanceState.loading());

    final response = await _baseRepositoryCheckBalance.checkBalance();

    response.fold((l) => emit(CheckBalanceState.error(l)),
        (r) => emit(CheckBalanceState.success(r)));
  }
}
