import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/Visitor/Home%20Page%20Visitor/HomeScreen%20Visitor/data/Model/sectionvisitorentity.dart';
import 'package:belahododfinal/Features/Visitor/Home%20Page%20Visitor/HomeScreen%20Visitor/data/Repository/baserepositorysectionvisitor.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'section_visitor_state.dart';
part 'section_visitor_cubit.freezed.dart';

@injectable
class SectionVisitorCubit extends Cubit<SectionVisitorState> {
  SectionVisitorCubit(this._baseRepositorySectionVisitor)
      : super(const SectionVisitorState.initial());

  final BaseRepositorySectionVisitor _baseRepositorySectionVisitor;

  Future<void> sectionsVisitor() async {
    emit(const SectionVisitorState.loading());

    final response = await _baseRepositorySectionVisitor.sectionsVisitor();

    response.fold((l) => emit(SectionVisitorState.error(l)),
        (r) => emit(SectionVisitorState.success(r)));
  }
}
