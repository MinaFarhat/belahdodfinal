import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/Details/data/Model/stationeryentity.dart';
import 'package:belahododfinal/Features/User/Details/data/Repostry/Stationery%20Repository/baserepositorystationery.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'stationery_state.dart';
part 'stationery_cubit.freezed.dart';

@injectable
class StationeryCubit extends Cubit<StationeryState> {
  StationeryCubit(this._baseRepositoryStationery)
      : super(const StationeryState.initial());

  final BaseRepositoryStationery _baseRepositoryStationery;

  Future<void> stationeryDetails(int productID) async {
    emit(const StationeryState.loading());

    final response =
        await _baseRepositoryStationery.stationeryDetails(productID);

    response.fold((l) => emit(StationeryState.error(l)),
        (r) => emit(StationeryState.success(r)));
  }
}
