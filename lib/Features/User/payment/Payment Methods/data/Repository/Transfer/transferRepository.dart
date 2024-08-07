import 'dart:io';

import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/payment/Payment%20Methods/data/Model/transferentity.dart';
import 'package:belahododfinal/Features/User/payment/Payment%20Methods/data/Repository/Transfer/baserepositorytransfer.dart';
import 'package:belahododfinal/Features/User/payment/Payment%20Methods/data/Web%20Service/Transfer/transferwebservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositoryTransfer)
class TransferRepositoryImpl implements BaseRepositoryTransfer {
  final NetworkInfo _networkInfo;
  final TransferWebService _transferWebService;

  TransferRepositoryImpl(
      {required NetworkInfo networkInfo,
      required TransferWebService transferWebService})
      : _networkInfo = networkInfo,
        _transferWebService = transferWebService;

  @override
  Future<Either<NetworkExceptions, TransferEntity>> sendTransferImage(
      File transferImage, int orderId) async {
    if (await _networkInfo.isConnected) {
      try {
        final response =
            await _transferWebService.sendTransferImage(transferImage, orderId);

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
