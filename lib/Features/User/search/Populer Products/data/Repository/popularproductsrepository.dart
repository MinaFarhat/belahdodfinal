import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/search/Populer%20Products/data/Model/popularproductsentity.dart';
import 'package:belahododfinal/Features/User/search/Populer%20Products/data/Repository/baserepositorypopularproducts.dart';
import 'package:belahododfinal/Features/User/search/Populer%20Products/data/webService/popularproductswebservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositoryPopularProducts)
class PopularProductsRepositoryImpl implements BaseRepositoryPopularProducts {
  final NetworkInfo _networkInfo;
  final PopularProductsWebService _popularProductsWebService;

  PopularProductsRepositoryImpl(
      {required NetworkInfo networkInfo,
      required PopularProductsWebService popularProductsWebService})
      : _networkInfo = networkInfo,
        _popularProductsWebService = popularProductsWebService;

  @override
  Future<Either<NetworkExceptions, PopularProductsEntity>>
      popularProducts() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _popularProductsWebService.popularProducts();

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
