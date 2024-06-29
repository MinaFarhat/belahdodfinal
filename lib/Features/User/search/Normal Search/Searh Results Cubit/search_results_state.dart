part of 'search_results_cubit.dart';

@freezed
class SearchResultsState with _$SearchResultsState {
  const factory SearchResultsState.initial() = _Initial;
  const factory SearchResultsState.loading() = _Loading;
  const factory SearchResultsState.success(
      SearchResultsEntity searchresultsentity) = _Success;
  const factory SearchResultsState.error(NetworkExceptions networkExceptions) =
      _Error;
}
