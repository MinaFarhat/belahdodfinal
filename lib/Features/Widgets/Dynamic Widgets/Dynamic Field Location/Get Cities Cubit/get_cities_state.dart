part of 'get_cities_cubit.dart';

@freezed
class GetCitiesState with _$GetCitiesState {
  const factory GetCitiesState.initial() = _Initial;
  const factory GetCitiesState.loading() = _Loading;
  const factory GetCitiesState.success(GetCitiesEntity getcitiesentity) =
      _Success;
  const factory GetCitiesState.error(NetworkExceptions networkExceptions) =
      _Error;
}
