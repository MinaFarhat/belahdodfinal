part of 'getproductsofsubsection_cubit.dart';

@freezed
class GetproductsofsubsectionState with _$GetproductsofsubsectionState {
  const factory GetproductsofsubsectionState.initial() = _Initial;
  const factory GetproductsofsubsectionState.loading() = _Loading;
  const factory GetproductsofsubsectionState.success(
      GetProductsofSubSectionEntity getproductsofsubsectionentity) = _Success;
  const factory GetproductsofsubsectionState.error(
      NetworkExceptions networkExceptions) = _Error;
}
