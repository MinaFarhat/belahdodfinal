import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/homepage/SubSections%20And%20Products/presentation/All%20Products/data/Model/getproductsmainsection.dart';
import 'package:belahododfinal/Features/User/homepage/SubSections%20And%20Products/presentation/All%20Products/data/Repostry/baserepositorygetproductsmainsection.dart';
import 'package:belahododfinal/Features/User/homepage/SubSections%20And%20Products/presentation/All%20Products/data/Web%20Service/getproductsmainsectionwebservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositoryGetProductsMainSection)
class GetProductsMainSectionrepositoryImpl
    implements BaseRepositoryGetProductsMainSection {
  final NetworkInfo _networkInfo;
  final GetProductsMainSectionWebService _getProductsMainSectionWebService;

  GetProductsMainSectionrepositoryImpl(
      {required NetworkInfo networkInfo,
      required GetProductsMainSectionWebService
          getProductsMainSectionWebService})
      : _networkInfo = networkInfo,
        _getProductsMainSectionWebService = getProductsMainSectionWebService;

  @override
  Future<Either<NetworkExceptions, GetProductsMainSectionEntity>>
      productsMainSection(int sectionId) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _getProductsMainSectionWebService
            .productsMainSection(sectionId);

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
