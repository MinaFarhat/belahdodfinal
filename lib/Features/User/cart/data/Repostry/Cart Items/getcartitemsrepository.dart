import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/cart/data/Model/getcartitemsentity.dart';
import 'package:belahododfinal/Features/User/cart/data/Repostry/Cart%20Items/baserepositorycartitems.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../Web Service/Cart Items/cartitemswebservice.dart';

@Singleton(as: BaseRepositoryCartItems)
class GetCartItemsRepositoryImpl implements BaseRepositoryCartItems {
  final NetworkInfo _networkInfo;
  final CartItemsWebService _cartItemsWebService;

  GetCartItemsRepositoryImpl(
      {required NetworkInfo networkInfo,
      required CartItemsWebService cartItemsWebService})
      : _networkInfo = networkInfo,
        _cartItemsWebService = cartItemsWebService;

  @override
  Future<Either<NetworkExceptions, GetCartItemsEntity>> getcartitems() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _cartItemsWebService.getcartitems();

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
