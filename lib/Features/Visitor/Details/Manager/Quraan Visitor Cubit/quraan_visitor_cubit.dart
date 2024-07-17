import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/Visitor/Details/data/Model/quraanvisitorentity.dart';
import 'package:belahododfinal/Features/Visitor/Details/data/Repository/Quraan%20Repository%20Visitor/baserepositoryquraanvisitor.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'quraan_visitor_state.dart';
part 'quraan_visitor_cubit.freezed.dart';

@injectable
class QuraanVisitorCubit extends Cubit<QuraanVisitorState> {
  QuraanVisitorCubit(this._baseRepositoryQuraanVisitor)
      : super(const QuraanVisitorState.initial());

  final BaseRepositoryQuraanVisitor _baseRepositoryQuraanVisitor;
  Future<void> quraanDetailsVisitor(int productID) async {
    emit(const QuraanVisitorState.loading());

    final response =
        await _baseRepositoryQuraanVisitor.quraanDetailsVisitor(productID);

    response.fold((l) => emit(QuraanVisitorState.error(l)),
        (r) => emit(QuraanVisitorState.success(r)));
  }
}
