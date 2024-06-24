import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/cart/data/Model/quantityupdateentity.dart';
import 'package:belahododfinal/Features/User/cart/data/Web%20Service/Quantiity%20Update/quantityupdatewebservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'baserepositoryquantityupdate.dart';

@Singleton(as: BaseRepositoryQuantityUpdate)
class QuantityUpdateRepositoryImpl implements BaseRepositoryQuantityUpdate {
  final NetworkInfo _networkInfo;
  final QuantityUpdateWebService _quantityUpdateWebService;

  QuantityUpdateRepositoryImpl(
      {required NetworkInfo networkInfo,
      required QuantityUpdateWebService quantityUpdateWebService})
      : _networkInfo = networkInfo,
        _quantityUpdateWebService = quantityUpdateWebService;

  @override
  Future<Either<NetworkExceptions, QuantityUpdateEntity>> quantityupdate(
      int productId, int quantity) async {
    if (await _networkInfo.isConnected) {
      try {
        final response =
            await _quantityUpdateWebService.quantityupdate(productId, quantity);

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
