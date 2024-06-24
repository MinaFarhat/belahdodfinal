import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/cart/data/Model/quantityupdateentity.dart';
import 'package:belahododfinal/Features/User/cart/data/Repostry/Quantity%20Update/baserepositoryquantityupdate.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'quantitiyupdate_state.dart';
part 'quantitiyupdate_cubit.freezed.dart';

@injectable
class QuantitiyupdateCubit extends Cubit<QuantitiyupdateState> {
  QuantitiyupdateCubit(this._baseRepositoryQuantityUpdate)
      : super(const QuantitiyupdateState.initial());

  final BaseRepositoryQuantityUpdate _baseRepositoryQuantityUpdate;

  Future<void> quantityupdate(int productId, int quantity) async {
    emit(const QuantitiyupdateState.loading());

    final response =
        await _baseRepositoryQuantityUpdate.quantityupdate(productId, quantity);

    response.fold((l) => emit(QuantitiyupdateState.error(l)),
        (r) => emit( QuantitiyupdateState.success(r)));
  }
}
