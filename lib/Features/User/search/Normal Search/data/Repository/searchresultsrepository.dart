import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/search/Normal%20Search/data/Model/searchresultsentity.dart';
import 'package:belahododfinal/Features/User/search/Normal%20Search/data/Repository/baserepositorysearchresults.dart';
import 'package:belahododfinal/Features/User/search/Normal%20Search/data/Web%20Service/searchresultswebservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositorySearchResults)
class SearchResultsRepositoryImpl implements BaseRepositorySearchResults {
  final NetworkInfo _networkInfo;
  final SearchResultsWebService _resultsWebService;

  SearchResultsRepositoryImpl(
      {required NetworkInfo networkInfo,
      required SearchResultsWebService resultsWebService})
      : _networkInfo = networkInfo,
        _resultsWebService = resultsWebService;

  @override
  Future<Either<NetworkExceptions, SearchResultsEntity>> searchResults(
      String searchText) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _resultsWebService.searchResults(searchText);

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
