import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/Details/data/Model/quraanentity.dart';
import 'package:belahododfinal/Features/User/Details/data/Repostry/Quraan%20Repository/baserepositoryquraan.dart';
import 'package:belahododfinal/Features/User/Details/data/Web%20Service/quraan_webservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositoryQuraan)
class QuraanRepository implements BaseRepositoryQuraan {
  final NetworkInfo _networkInfo;
  final QuraanWebService _quraanWebService;

  QuraanRepository(
      {required NetworkInfo networkInfo,
      required QuraanWebService quraanWebService})
      : _networkInfo = networkInfo,
        _quraanWebService = quraanWebService;

  @override
  Future<Either<NetworkExceptions, QuraanEntity>> quraanDetails(int productID) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _quraanWebService.quraanDetails(productID);

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
