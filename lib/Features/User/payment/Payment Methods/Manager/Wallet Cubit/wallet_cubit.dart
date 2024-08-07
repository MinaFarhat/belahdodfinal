import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/payment/Payment%20Methods/data/Model/walletentity.dart';
import 'package:belahododfinal/Features/User/payment/Payment%20Methods/data/Repository/Wallet/baserepositorywallet.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'wallet_state.dart';
part 'wallet_cubit.freezed.dart';

@injectable
class WalletCubit extends Cubit<WalletState> {
  WalletCubit(this._baseRepositoryWallet) : super(const WalletState.initial());

  final BaseRepositoryWallet _baseRepositoryWallet;

  Future<void> wallet(int orderId) async {
    emit(const WalletState.loading());

    final response = await _baseRepositoryWallet.wallet(orderId);

    response.fold(
        (l) => emit(WalletState.error(l)), (r) => emit(WalletState.success(r)));
  }
}
