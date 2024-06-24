import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/cart/data/Model/addtocartentity.dart';
import 'package:belahododfinal/Features/User/cart/data/Repostry/Add%20To%20Cart/baserepositoryaddtocart.dart';
import 'package:belahododfinal/Features/User/cart/data/Web%20Service/Add%20To%20Cart/addtocartwebservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositoryAddtoCart)
class AddtoCartRepositoryImpl implements BaseRepositoryAddtoCart {
  final NetworkInfo _networkInfo;
  final AddtoCartWebService _addtoCartWebService;

  AddtoCartRepositoryImpl(
      {required NetworkInfo networkInfo,
      required AddtoCartWebService addtoCartWebService})
      : _networkInfo = networkInfo,
        _addtoCartWebService = addtoCartWebService;

  @override
  Future<Either<NetworkExceptions, AddtoCartEntity>> addtocart(
      int productId) async {

        
    if (await _networkInfo.isConnected) {
      try {
        final response = await _addtoCartWebService.addtocart(productId);
        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
