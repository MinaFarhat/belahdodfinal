import 'dart:io';

import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/payment/Payment%20Methods/data/Model/transferentity.dart';
import 'package:belahododfinal/Features/User/payment/Payment%20Methods/data/Repository/Transfer/baserepositorytransfer.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'transfer_state.dart';
part 'transfer_cubit.freezed.dart';

@injectable
class TransferCubit extends Cubit<TransferState> {
  TransferCubit(this._baseRepositoryTransfer)
      : super(const TransferState.initial());

  final BaseRepositoryTransfer _baseRepositoryTransfer;

  Future<void> sendTransferImage(File transferImage) async {
    emit(const TransferState.loading());

    final response =
        await _baseRepositoryTransfer.sendTransferImage(transferImage);

    response.fold((l) => emit(TransferState.error(l)),
        (r) => emit(TransferState.success(r)));
  }
}
