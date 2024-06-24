import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Presentation/Products%20Of%20SubSections/data/Repository/baserepositorygetproductsofsubsection.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../data/Model/getproductsofsubsectionentity.dart';

part 'getproductsofsubsection_state.dart';
part 'getproductsofsubsection_cubit.freezed.dart';

@injectable
class GetproductsofsubsectionCubit extends Cubit<GetproductsofsubsectionState> {
  GetproductsofsubsectionCubit(this._baseRepositoryGetProductsOfSubSection)
      : super(const GetproductsofsubsectionState.initial());

  final BaseRepositoryGetProductsOfSubSection
      _baseRepositoryGetProductsOfSubSection;

  Future<void> getProductsofSubSection(int subSectionId) async {
    emit(const GetproductsofsubsectionState.loading());

    final response = await _baseRepositoryGetProductsOfSubSection
        .getproductsofsubsection(subSectionId);

    response.fold((l) => emit(GetproductsofsubsectionState.error(l)),
        (r) => emit(GetproductsofsubsectionState.success(r)));
  }
}
