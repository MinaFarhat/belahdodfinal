import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/Visitor/Details/data/Model/basevisitorentity.dart';
import 'package:belahododfinal/Features/Visitor/Details/data/Repository/Base%20Repository%20Visitor/baserepositorybasevisitor.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'base_visitor_state.dart';
part 'base_visitor_cubit.freezed.dart';

@injectable
class BaseVisitorCubit extends Cubit<BaseVisitorState> {
  BaseVisitorCubit(this._baseRepositoryBaseVisitor)
      : super(const BaseVisitorState.initial());

  final BaseRepositoryBaseVisitor _baseRepositoryBaseVisitor;

  Future<void> baseDetailsVisitor(int productID) async {
    emit(const BaseVisitorState.loading());

    final response =
        await _baseRepositoryBaseVisitor.baseDetailsVisitor(productID);

    response.fold((l) => emit(BaseVisitorState.error(l)),
        (r) => emit(BaseVisitorState.success(r)));
  }
}
