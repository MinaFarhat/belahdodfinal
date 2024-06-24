import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/data/Model/getsubsectionsentity.dart';
import 'package:belahododfinal/Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/data/Repostry/baserepositorygetsubsections.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'getsubsections_state.dart';
part 'getsubsections_cubit.freezed.dart';

@injectable
class GetsubsectionsCubit extends Cubit<GetsubsectionsState> {
  GetsubsectionsCubit(this._baseRepositoryGetSubSections)
      : super(const GetsubsectionsState.initial());

  final BaseRepositoryGetSubSections _baseRepositoryGetSubSections;

  Future<void> getsubsections(int sectionId) async {
    emit(const GetsubsectionsState.loading());

    final response =
        await _baseRepositoryGetSubSections.getsubsections(sectionId);

    response.fold((l) => emit(GetsubsectionsState.error(l)),
        (r) => emit(GetsubsectionsState.success(r)));
  }
}
