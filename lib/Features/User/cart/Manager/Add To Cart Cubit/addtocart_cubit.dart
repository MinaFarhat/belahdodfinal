import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/cart/data/Model/addtocartentity.dart';
import 'package:belahododfinal/Features/User/cart/data/Repostry/Add%20To%20Cart/baserepositoryaddtocart.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'addtocart_state.dart';
part 'addtocart_cubit.freezed.dart';

@injectable
class AddtocartCubit extends Cubit<AddtocartState> {
  AddtocartCubit(this._baseRepositoryAddtoCart)
      : super(const AddtocartState.initial());

  final BaseRepositoryAddtoCart _baseRepositoryAddtoCart;

  Future<void> addtocart(int productID) async {
    emit(const AddtocartState.loading());

    final response = await _baseRepositoryAddtoCart.addtocart(productID);

    response.fold((l) => emit(AddtocartState.error(l)),
        (r) => emit(AddtocartState.success(r)));
  }
}
