import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/homepage/HomeScreen/data/Model/sectionentity.dart';
import 'package:belahododfinal/Features/User/homepage/HomeScreen/data/Repostitory/baserepositorysection.dart';
import 'package:belahododfinal/Features/User/homepage/HomeScreen/data/Web%20Service/sectionwebservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositorySection)
class SectionRepositoryImpl implements BaseRepositorySection {
  final NetworkInfo _networkInfo;
  final SectionWebService _sectionWebService;

  SectionRepositoryImpl(
      {required NetworkInfo networkInfo,
      required SectionWebService sectionWebService})
      : _networkInfo = networkInfo,
        _sectionWebService = sectionWebService;

  @override
  Future<Either<NetworkExceptions, SectionEntity>> sections() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _sectionWebService.sections();

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
