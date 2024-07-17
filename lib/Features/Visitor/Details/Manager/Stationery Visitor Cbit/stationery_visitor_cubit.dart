import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/Visitor/Details/data/Model/stationeryvisitorentity.dart';
import 'package:belahododfinal/Features/Visitor/Details/data/Repository/Stationery%20Repository%20Visitor/baserepositorystationeryvisitor.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'stationery_visitor_state.dart';
part 'stationery_visitor_cubit.freezed.dart';

@injectable
class StationeryVisitorCubit extends Cubit<StationeryVisitorState> {
  StationeryVisitorCubit(this._baseRepositoryStationeryVisitor)
      : super(const StationeryVisitorState.initial());

  final BaseRepositoryStationeryVisitor _baseRepositoryStationeryVisitor;

  Future<void> stationeryDetailsVisitor(int productID) async {
    emit(const StationeryVisitorState.loading());

    final response = await _baseRepositoryStationeryVisitor
        .stationeryDetailsVisitor(productID);

    response.fold((l) => emit(StationeryVisitorState.error(l)),
        (r) => emit(StationeryVisitorState.success(r)));
  }
}
