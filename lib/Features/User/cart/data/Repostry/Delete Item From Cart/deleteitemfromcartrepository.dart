import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/cart/data/Model/deleteitemfromcartentity.dart';
import 'package:belahododfinal/Features/User/cart/data/Web%20Service/Delete%20Item%20From%20Cart/deleteitemfromcartwebservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'baserepositorydeleteitemfromcart.dart';

@Singleton(as: BaseRepositoryDeleteItemFromCart)
class DeleteItemFromCartRepositoryImpl
    implements BaseRepositoryDeleteItemFromCart {
  final NetworkInfo _networkInfo;
  final DeleteItemFromCartWebService _deleteItemFromCartWebService;

  DeleteItemFromCartRepositoryImpl(
      {required NetworkInfo networkInfo,
      required DeleteItemFromCartWebService deleteItemFromCartWebService})
      : _networkInfo = networkInfo,
        _deleteItemFromCartWebService = deleteItemFromCartWebService;

  @override
  Future<Either<NetworkExceptions, DeleteItemFromCartEntity>>
      deleteitemfromcart(int productId) async {
    if (await _networkInfo.isConnected) {
      try {
        final response =
            await _deleteItemFromCartWebService.deleteitemfromcart(productId);

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
