import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/payment/Payment%20Methods/data/Model/onarrivalentity.dart';
import 'package:belahododfinal/Features/User/payment/Payment%20Methods/data/Repository/On%20Arrival/baserepositoryonarrival.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'on_arrival_state.dart';
part 'on_arrival_cubit.freezed.dart';

@injectable
class OnArrivalCubit extends Cubit<OnArrivalState> {
  OnArrivalCubit(this._baseRepositoryOnArrival)
      : super(const OnArrivalState.initial());

  final BaseRepositoryOnArrival _baseRepositoryOnArrival;

  Future<void> onArrival() async {
    emit(const OnArrivalState.loading());

    final response = await _baseRepositoryOnArrival.onArrival();

    response.fold((l) => emit(OnArrivalState.error(l)),
        (r) => emit(OnArrivalState.success(r)));
  }
}
