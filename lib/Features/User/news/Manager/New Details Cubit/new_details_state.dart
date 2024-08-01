part of 'new_details_cubit.dart';

@freezed
class NewDetailsState with _$NewDetailsState {
  const factory NewDetailsState.initial() = _Initial;
  const factory NewDetailsState.loading() = _Loading;
  const factory NewDetailsState.success(
      GetNewDetailsEntity getnewdetailsentity) = _Success;
  const factory NewDetailsState.error(NetworkExceptions networkExceptions) =
      _Error;
}
