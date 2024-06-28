import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/payment/Payment%20Methods/data/Model/onarrivalentity.dart';
import 'package:belahododfinal/Features/User/payment/Payment%20Methods/data/Repository/On%20Arrival/baserepositoryonarrival.dart';
import 'package:belahododfinal/Features/User/payment/Payment%20Methods/data/Web%20Service/On%20Arrival/onarrivalwebservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositoryOnArrival)
class OnArrivalRepositoryImpl implements BaseRepositoryOnArrival {
  final NetworkInfo _networkInfo;
  final OnArrivalWebService _onArrivalWebService;

  OnArrivalRepositoryImpl(
      {required NetworkInfo networkInfo,
      required OnArrivalWebService onArrivalWebService})
      : _networkInfo = networkInfo,
        _onArrivalWebService = onArrivalWebService;

  @override
  Future<Either<NetworkExceptions, OnArrivalEntity>> onArrival() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _onArrivalWebService.onArrival();

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
