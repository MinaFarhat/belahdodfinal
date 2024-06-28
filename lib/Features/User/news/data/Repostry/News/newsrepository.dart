import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/news/data/Model/getnewsentity.dart';
import 'package:belahododfinal/Features/User/news/data/Repostry/News/baserepositorynews.dart';
import 'package:belahododfinal/Features/User/news/data/Web%20Service/News/newswebservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositoryNews)
class NewsRepositoryImpl implements BaseRepositoryNews {
  final NetworkInfo _networkInfo;
  final NewsWebService _newsWebService;

  NewsRepositoryImpl(
      {required NetworkInfo networkInfo,
      required NewsWebService newsWebService})
      : _networkInfo = networkInfo,
        _newsWebService = newsWebService;

  @override
  Future<Either<NetworkExceptions, GetNewsEntity>> getNews() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _newsWebService.getNews();

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
