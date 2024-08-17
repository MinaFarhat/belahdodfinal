import 'dart:io';

import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/wallet/data/model/addbalanceentity.dart';
import 'package:belahododfinal/Features/User/wallet/data/repository/baserepositoryaddbalance.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'add_balance_state.dart';
part 'add_balance_cubit.freezed.dart';

@injectable
class AddBalanceCubit extends Cubit<AddBalanceState> {
  AddBalanceCubit(this._baseRepositoryAddBalance)
      : super(const AddBalanceState.initial());

  final BaseRepositoryAddBalance _baseRepositoryAddBalance;

  Future<void> addBalance(File transferImage) async {
    emit(const AddBalanceState.loading());

    final response = await _baseRepositoryAddBalance.addBalance(transferImage);

    response.fold((l) => emit(AddBalanceState.error(l)),
        (r) => emit(AddBalanceState.success(r)));
  }
}
