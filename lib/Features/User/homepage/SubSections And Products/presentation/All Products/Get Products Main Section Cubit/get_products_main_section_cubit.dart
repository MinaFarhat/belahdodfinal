import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/homepage/SubSections%20And%20Products/presentation/All%20Products/data/Model/getproductsmainsection.dart';
import 'package:belahododfinal/Features/User/homepage/SubSections%20And%20Products/presentation/All%20Products/data/Repostry/baserepositorygetproductsmainsection.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_products_main_section_state.dart';
part 'get_products_main_section_cubit.freezed.dart';

@injectable
class GetProductsMainSectionCubit extends Cubit<GetProductsMainSectionState> {
  GetProductsMainSectionCubit(this._baseRepositoryGetProductsMainSection)
      : super(const GetProductsMainSectionState.initial());

  final BaseRepositoryGetProductsMainSection
      _baseRepositoryGetProductsMainSection;

  Future<void> getProductsMainSection(int sectionId) async {
    emit(const GetProductsMainSectionState.loading());

    final response = await _baseRepositoryGetProductsMainSection
        .productsMainSection(sectionId);

    response.fold((l) => emit(GetProductsMainSectionState.error(l)),
        (r) => emit(GetProductsMainSectionState.success(r)));
  }
}
