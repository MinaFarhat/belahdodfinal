import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/Orders/Order%20Details/data/Model/orderdetailsentity.dart';
import 'package:belahododfinal/Features/User/Orders/Order%20Details/data/Repostry/baserepositoryorderdetails.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'order_details_state.dart';
part 'order_details_cubit.freezed.dart';

@injectable
class OrderDetailsCubit extends Cubit<OrderDetailsState> {
  OrderDetailsCubit(this._baseRepositoryOrderDetails)
      : super(const OrderDetailsState.initial());

  final BaseRepositoryOrderDetails _baseRepositoryOrderDetails;

  Future<void> orderDetails(int orderId) async {
    emit(const OrderDetailsState.loading());

    final response = await _baseRepositoryOrderDetails.orderDetails(orderId);

    response.fold((l) => emit(OrderDetailsState.error(l)),
        (r) => emit(OrderDetailsState.success(r)));
  }
}
