part of 'get_products_main_section_cubit.dart';

@freezed
class GetProductsMainSectionState with _$GetProductsMainSectionState {
  const factory GetProductsMainSectionState.initial() = _Initial;
  const factory GetProductsMainSectionState.loading() = _Loading;
  const factory GetProductsMainSectionState.success(
      GetProductsMainSectionEntity getproductsmainsectionentity) = _Success;
  const factory GetProductsMainSectionState.error(
      NetworkExceptions networkExceptions) = _Error;
}
