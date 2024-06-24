part of 'addtocart_cubit.dart';

@freezed
class AddtocartState with _$AddtocartState {
  const factory AddtocartState.initial() = _Initial;
  const factory AddtocartState.loading() = _Loading;
  const factory AddtocartState.success(AddtoCartEntity addtocartentity) =
      _Success;
  const factory AddtocartState.error(NetworkExceptions networkExceptions) =
      _Error;
}
