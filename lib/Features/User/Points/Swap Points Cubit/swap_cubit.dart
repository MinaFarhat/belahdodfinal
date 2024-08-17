import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/Points/data/Model/swapentity.dart';
import 'package:belahododfinal/Features/User/Points/data/Repository/baserepositoryswap.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'swap_state.dart';
part 'swap_cubit.freezed.dart';

@injectable
class SwapCubit extends Cubit<SwapState> {
  SwapCubit(this._baseRepositorySwap) : super(const SwapState.initial());

  final BaseRepositorySwap _baseRepositorySwap;

  Future<void> swapPoints(int points) async {
    emit(const SwapState.loading());

    final response = await _baseRepositorySwap.swapPoints(points);

    response.fold(
        (l) => emit(SwapState.error(l)), (r) => emit(SwapState.success(r)));
  }
}
