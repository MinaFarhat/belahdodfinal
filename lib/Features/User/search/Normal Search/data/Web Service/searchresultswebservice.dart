import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Core/api/end_points.dart';
import 'package:belahododfinal/Features/User/search/Normal%20Search/data/Model/searchresultsentity.dart';
import 'package:injectable/injectable.dart';

abstract class SearchResultsWebService {
  Future<SearchResultsEntity> searchResults(String searchText);
}

@Singleton(as: SearchResultsWebService)
class SearchResultsWebServiceImpl implements SearchResultsWebService {
  final ApiConsumer _apiConsumer;

  SearchResultsWebServiceImpl(this._apiConsumer);

  @override
  Future<SearchResultsEntity> searchResults(String searchText) async {
    final response =
        await _apiConsumer.get(EndPoints.searchResultsUrl + searchText);

    return SearchResultsEntity.fromJson(response);
  }
}
