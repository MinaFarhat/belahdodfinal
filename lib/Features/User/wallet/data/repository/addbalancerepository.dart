import 'dart:io';

import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/wallet/data/model/addbalanceentity.dart';
import 'package:belahododfinal/Features/User/wallet/data/repository/baserepositoryaddbalance.dart';
import 'package:belahododfinal/Features/User/wallet/data/webservice/addbalancewebservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositoryAddBalance)
class AddBalanceRepositoryImpl implements BaseRepositoryAddBalance {
  final NetworkInfo _networkInfo;
  final AddBalanceWebService _addBalanceWebService;

  AddBalanceRepositoryImpl(
      {required NetworkInfo networkInfo,
      required AddBalanceWebService addBalanceWebService})
      : _networkInfo = networkInfo,
        _addBalanceWebService = addBalanceWebService;

  @override
  Future<Either<NetworkExceptions, AddBalanceEntity>> addBalance(
      File transferImage) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _addBalanceWebService.addBalance(transferImage);

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
