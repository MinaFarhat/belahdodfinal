import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/Orders/main%20orders/data/Model/getordersentity.dart';
import 'package:belahododfinal/Features/User/Orders/main%20orders/data/Repostry/baserepositorygetorders.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_orders_state.dart';
part 'get_orders_cubit.freezed.dart';

@injectable
class GetOrdersCubit extends Cubit<GetOrdersState> {
  GetOrdersCubit(this._baseRepositoryGetOrders)
      : super(const GetOrdersState.initial());

  final BaseRepositoryGetOrders _baseRepositoryGetOrders;

  Future<void> getOrders() async {
    emit(const GetOrdersState.loading());

    final response = await _baseRepositoryGetOrders.getOrders();

    response.fold((l) => emit(GetOrdersState.error(l)),
        (r) => emit(GetOrdersState.success(r)));
  }
}
