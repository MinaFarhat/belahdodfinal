import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/search/Normal%20Search/data/Model/searchresultsentity.dart';
import 'package:belahododfinal/Features/User/search/Normal%20Search/data/Repository/baserepositorysearchresults.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'search_results_state.dart';
part 'search_results_cubit.freezed.dart';

@injectable
class SearchResultsCubit extends Cubit<SearchResultsState> {
  SearchResultsCubit(this._baseRepositorySearchResults)
      : super(const SearchResultsState.initial());

  final BaseRepositorySearchResults _baseRepositorySearchResults;

  Future<void> searchResults(String searchText) async {
    emit(const SearchResultsState.loading());

    final response =
        await _baseRepositorySearchResults.searchResults(searchText);

    response.fold((l) => emit(SearchResultsState.error(l)),
        (r) => emit(SearchResultsState.success(r)));
  }
}
