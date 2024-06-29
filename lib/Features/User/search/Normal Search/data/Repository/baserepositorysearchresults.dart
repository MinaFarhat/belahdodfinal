import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/search/Normal%20Search/data/Model/searchresultsentity.dart';
import 'package:dartz/dartz.dart';

abstract class BaseRepositorySearchResults {
  Future<Either<NetworkExceptions, SearchResultsEntity>> searchResults(
    String searchText,
  );
}
