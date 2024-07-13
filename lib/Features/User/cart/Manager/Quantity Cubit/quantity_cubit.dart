import 'package:belahododfinal/Features/User/cart/Manager/Quantity%20Cubit/quantity_state.dart';
import 'package:bloc/bloc.dart';

class QuantityCubit extends Cubit<QuantityState> {
  QuantityCubit(int initialQuantity) : super(QuantityState(initialQuantity));

  void increment() {
    emit(QuantityState(state.quantity + 1));
  }

  void decrement() {
    emit(QuantityState(state.quantity - 1));
  }
}
