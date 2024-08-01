import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/news/data/Model/getnewdetailsentity.dart';
import 'package:belahododfinal/Features/User/news/data/Repostry/News/baserepositorymewdetails.dart';
import 'package:belahododfinal/Features/User/news/data/Web%20Service/News/newdetailswebservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositoryNewDetails)
class NewDetailsRepositoryImpl implements BaseRepositoryNewDetails {
  final NetworkInfo _networkInfo;
  final NewDetailsWebService _newDetailsWebService;

  NewDetailsRepositoryImpl(
      {required NetworkInfo networkInfo,
      required NewDetailsWebService newDetailsWebService})
      : _networkInfo = networkInfo,
        _newDetailsWebService = newDetailsWebService;

  @override
  Future<Either<NetworkExceptions, GetNewDetailsEntity>> getNewDetails(
      int newId) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _newDetailsWebService.getNewDetails(newId);

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
