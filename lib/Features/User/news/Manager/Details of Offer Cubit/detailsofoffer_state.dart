part of 'detailsofoffer_cubit.dart';

@freezed
class DetailsofofferState with _$DetailsofofferState {
  const factory DetailsofofferState.initial() = _Initial;
  const factory DetailsofofferState.loading() = _Loading;
  const factory DetailsofofferState.success(
      DetailsofOfferEntity detailsofofferentity) = _Success;
  const factory DetailsofofferState.error(NetworkExceptions networkExceptions) =
      _Error;
}
