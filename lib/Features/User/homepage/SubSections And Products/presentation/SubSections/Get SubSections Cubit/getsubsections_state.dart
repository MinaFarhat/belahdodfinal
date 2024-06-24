part of 'getsubsections_cubit.dart';

@freezed
class GetsubsectionsState with _$GetsubsectionsState {
  const factory GetsubsectionsState.initial() = _Initial;
  const factory GetsubsectionsState.loading() = _Loading;
  const factory GetsubsectionsState.success(
      GetSubSectionsEntity getsubsectionsentity) = _Success;
  const factory GetsubsectionsState.error(NetworkExceptions networkExceptions) =
      _Error;
}
