import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/payment/Address/data/Model/sendorderentity.dart';
import 'package:belahododfinal/Features/User/payment/Address/data/Repository/baserepositorysendorder.dart';
import 'package:belahododfinal/Features/User/payment/Address/data/WebService/sendorderwebservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositorySendOrder)
class SendOrderRepositoryImpl implements BaseRepositorySendOrder {
  final NetworkInfo _networkInfo;
  final SendOrderWebService _sendOrderWebService;

  SendOrderRepositoryImpl(
      {required NetworkInfo networkInfo,
      required SendOrderWebService sendOrderWebService})
      : _networkInfo = networkInfo,
        _sendOrderWebService = sendOrderWebService;

  @override
  Future<Either<NetworkExceptions, SendOrderEntity>> sendOrder(
      int cityId, String address, String? notes) async {
    if (await _networkInfo.isConnected) {
      try {
        final response =
            await _sendOrderWebService.sendorder(cityId, address, notes);

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
