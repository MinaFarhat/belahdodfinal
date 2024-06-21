import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/Details/data/Model/stationeryentity.dart';
import 'package:belahododfinal/Features/User/Details/data/Repostry/Stationery%20Repository/baserepositorystationery.dart';
import 'package:belahododfinal/Features/User/Details/data/Web%20Service/stationery_webservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositoryStationery)
class StationeryRepository implements BaseRepositoryStationery {
  final NetworkInfo _networkInfo;
  final StationeryWebService _stationeryWebService;

  StationeryRepository(
      {required NetworkInfo networkInfo,
      required StationeryWebService stationeryWebService})
      : _networkInfo = networkInfo,
        _stationeryWebService = stationeryWebService;

  @override
  Future<Either<NetworkExceptions, StationeryEntity>>
      stationeryDetails() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _stationeryWebService.stationeryDetails();

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
