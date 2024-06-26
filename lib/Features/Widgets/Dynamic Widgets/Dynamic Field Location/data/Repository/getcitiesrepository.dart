import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/Widgets/Dynamic%20Widgets/Dynamic%20Field%20Location/data/Model/getcitiesentity.dart';
import 'package:belahododfinal/Features/Widgets/Dynamic%20Widgets/Dynamic%20Field%20Location/data/Repository/baserepositorygetcities.dart';
import 'package:belahododfinal/Features/Widgets/Dynamic%20Widgets/Dynamic%20Field%20Location/data/Web%20Service/getcitieswebservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositoryGetCities)
class GetCitiesRepositoryImpl implements BaseRepositoryGetCities {
  final NetworkInfo _networkInfo;
  final GetCitiesWebService _getCitiesWebService;

  GetCitiesRepositoryImpl(
      {required NetworkInfo networkInfo,
      required GetCitiesWebService getCitiesWebService})
      : _networkInfo = networkInfo,
        _getCitiesWebService = getCitiesWebService;

  @override
  Future<Either<NetworkExceptions, GetCitiesEntity>> cities() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _getCitiesWebService.cities();

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
