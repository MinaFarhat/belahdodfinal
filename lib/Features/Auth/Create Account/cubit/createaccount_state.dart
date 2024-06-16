part of 'createaccount_cubit.dart';

@freezed
class CreateaccountState with _$CreateaccountState {
  const factory CreateaccountState.initial() = _Initial;
  const factory CreateaccountState.loading() = _Loading;
  const factory CreateaccountState.success() = _Success;
  const factory CreateaccountState.error(NetworkExceptions networkExceptions) = _Error;
}
