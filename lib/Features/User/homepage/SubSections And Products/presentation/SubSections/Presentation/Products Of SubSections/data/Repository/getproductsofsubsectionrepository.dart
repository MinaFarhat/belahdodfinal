import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Presentation/Products%20Of%20SubSections/data/Model/getproductsofsubsectionentity.dart';
import 'package:belahododfinal/Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Presentation/Products%20Of%20SubSections/data/Repository/baserepositorygetproductsofsubsection.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../WebService/getproductsofsubsectionwebservice.dart';

@Singleton(as: BaseRepositoryGetProductsOfSubSection)
class GetProductsofSubSectionRepository
    implements BaseRepositoryGetProductsOfSubSection {
  final NetworkInfo _networkInfo;
  final GetProductsofSubSectionWebService _getProductsofSubSectionWebService;

  GetProductsofSubSectionRepository(
      {required NetworkInfo networkInfo,
      required GetProductsofSubSectionWebService
          getProductsofSubSectionWebService})
      : _networkInfo = networkInfo,
        _getProductsofSubSectionWebService = getProductsofSubSectionWebService;

  @override
  Future<Either<NetworkExceptions, GetProductsofSubSectionEntity>>
      getproductsofsubsection(int subSectionId) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _getProductsofSubSectionWebService
            .getproductsofsubsection(subSectionId);

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
