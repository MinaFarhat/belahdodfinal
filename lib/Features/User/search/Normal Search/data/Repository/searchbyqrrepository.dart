import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/search/Normal%20Search/data/Model/searchbyqrentity.dart';
import 'package:belahododfinal/Features/User/search/Normal%20Search/data/Repository/baserepositorysearchbyqr.dart';
import 'package:belahododfinal/Features/User/search/Normal%20Search/data/Web%20Service/searchbyqrwebservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositorySearchByQr)
class SearchByQrRepositoryImpl implements BaseRepositorySearchByQr {
  final NetworkInfo _networkInfo;
  final SearchByQrWebService _searchByQrWebService;

  SearchByQrRepositoryImpl(
      {required NetworkInfo networkInfo,
      required SearchByQrWebService searchByQrWebService})
      : _networkInfo = networkInfo,
        _searchByQrWebService = searchByQrWebService;

  @override
  Future<Either<NetworkExceptions, SearchByQrEntity>> qrCode(
      String qrCode) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _searchByQrWebService.qrCode(qrCode);

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
