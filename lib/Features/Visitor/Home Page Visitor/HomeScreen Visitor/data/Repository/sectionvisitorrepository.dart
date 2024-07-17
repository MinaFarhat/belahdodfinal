import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/Visitor/Home%20Page%20Visitor/HomeScreen%20Visitor/data/Model/sectionvisitorentity.dart';
import 'package:belahododfinal/Features/Visitor/Home%20Page%20Visitor/HomeScreen%20Visitor/data/Repository/baserepositorysectionvisitor.dart';
import 'package:belahododfinal/Features/Visitor/Home%20Page%20Visitor/HomeScreen%20Visitor/data/Web%20Service/sectionvisitorwebservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositorySectionVisitor)
class SectionVisitorRepositoryImpl implements BaseRepositorySectionVisitor {
  final NetworkInfo _networkInfo;
  final SectionVisitorWebService _sectionVisitorWebService;

  SectionVisitorRepositoryImpl(
      {required NetworkInfo networkInfo,
      required SectionVisitorWebService sectionVisitorWebService})
      : _networkInfo = networkInfo,
        _sectionVisitorWebService = sectionVisitorWebService;

  @override
  Future<Either<NetworkExceptions, SectionVisitorEntity>>
      sectionsVisitor() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _sectionVisitorWebService.sectionsVisitor();

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
