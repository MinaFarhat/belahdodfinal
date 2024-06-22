import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/homepage/HomeScreen/data/Model/sectionentity.dart';
import 'package:belahododfinal/Features/User/homepage/HomeScreen/data/Repostitory/baserepositorysection.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'section_state.dart';
part 'section_cubit.freezed.dart';

@injectable
class SectionCubit extends Cubit<SectionState> {
  SectionCubit(this._baseRepositorySection)
      : super(const SectionState.initial());

  final BaseRepositorySection _baseRepositorySection;

  Future<void> sections() async {
    emit(const SectionState.loading());

    final response = await _baseRepositorySection.sections();

    response.fold((l) => emit(SectionState.error(l)),
        (r) => emit(SectionState.success(r)));
  }
}
