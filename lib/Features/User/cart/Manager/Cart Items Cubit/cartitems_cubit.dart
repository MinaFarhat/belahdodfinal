import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/cart/data/Model/getcartitemsentity.dart';
import 'package:belahododfinal/Features/User/cart/data/Repostry/Cart%20Items/baserepositorycartitems.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'cartitems_state.dart';
part 'cartitems_cubit.freezed.dart';

@injectable
class CartitemsCubit extends Cubit<CartitemsState> {
  CartitemsCubit(this._baseRepositoryCartItems)
      : super(const CartitemsState.initial());

  final BaseRepositoryCartItems _baseRepositoryCartItems;

  Future<void> getcartitems() async {
    emit(const CartitemsState.loading());

    final response = await _baseRepositoryCartItems.getcartitems();

    response.fold((l) => emit(CartitemsState.error(l)),
        (r) => emit(CartitemsState.success(r)));
  }
}
