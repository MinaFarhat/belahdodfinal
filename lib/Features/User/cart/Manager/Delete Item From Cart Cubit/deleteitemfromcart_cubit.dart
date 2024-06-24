import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/cart/data/Model/deleteitemfromcartentity.dart';
import 'package:belahododfinal/Features/User/cart/data/Repostry/Delete%20Item%20From%20Cart/baserepositorydeleteitemfromcart.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'deleteitemfromcart_state.dart';
part 'deleteitemfromcart_cubit.freezed.dart';

@injectable
class DeleteitemfromcartCubit extends Cubit<DeleteitemfromcartState> {
  DeleteitemfromcartCubit(this._baseRepositoryDeleteItemFromCart)
      : super(const DeleteitemfromcartState.initial());

  final BaseRepositoryDeleteItemFromCart _baseRepositoryDeleteItemFromCart;

  Future<void> deleteitemfromcart(int productId) async {
    emit(const DeleteitemfromcartState.loading());

    final response =
        await _baseRepositoryDeleteItemFromCart.deleteitemfromcart(productId);

    response.fold((l) => emit(DeleteitemfromcartState.error(l)),
        (r) => emit(DeleteitemfromcartState.success(r)));
  }
}
