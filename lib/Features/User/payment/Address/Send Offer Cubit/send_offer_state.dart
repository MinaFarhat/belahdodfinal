part of 'send_offer_cubit.dart';

@freezed
class SendOfferState with _$SendOfferState {
  const factory SendOfferState.initial() = _Initial;
  const factory SendOfferState.loading() = _Loading;
  const factory SendOfferState.success(SendOfferEntity sendofferentity) =
      _Success;
  const factory SendOfferState.error(NetworkExceptions networkExceptions) =
      _Error;
}
