import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/Orders/main%20orders/data/Model/getordersentity.dart';
import 'package:belahododfinal/Features/User/Orders/main%20orders/data/Repostry/baserepositorygetorders.dart';
import 'package:belahododfinal/Features/User/Orders/main%20orders/data/Web%20Service/getorderswebservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositoryGetOrders)
class GetOrdersRepositoryImpl implements BaseRepositoryGetOrders {
  final NetworkInfo _networkInfo;
  final GetOrdersWebService _getOrdersWebService;

  GetOrdersRepositoryImpl(
      {required NetworkInfo networkInfo,
      required GetOrdersWebService getOrdersWebService})
      : _networkInfo = networkInfo,
        _getOrdersWebService = getOrdersWebService;

  @override
  Future<Either<NetworkExceptions, GetOrdersEntity>> getOrders() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _getOrdersWebService.getOrders();

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
