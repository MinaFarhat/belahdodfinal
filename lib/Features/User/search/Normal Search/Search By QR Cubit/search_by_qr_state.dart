part of 'search_by_qr_cubit.dart';

@freezed
class SearchByQrState with _$SearchByQrState {
  const factory SearchByQrState.initial() = _Initial;
  const factory SearchByQrState.loading() = _Loading;
  const factory SearchByQrState.success(SearchByQrEntity searchbyqrentity) =
      _Success;
  const factory SearchByQrState.error(NetworkExceptions networkExceptions) =
      _Error;
}
