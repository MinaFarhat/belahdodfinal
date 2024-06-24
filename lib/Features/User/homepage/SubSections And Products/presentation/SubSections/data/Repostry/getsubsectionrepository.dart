import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/data/Model/getsubsectionsentity.dart';
import 'package:belahododfinal/Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/data/Repostry/baserepositorygetsubsections.dart';
import 'package:belahododfinal/Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/data/Web%20Service/getsubsectionswebservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositoryGetSubSections)
class GetSubSectionsRepositoryImpl implements BaseRepositoryGetSubSections {
  final NetworkInfo _networkInfo;
  final GetSubSectionsWebService _getSubSectionsWebService;

  GetSubSectionsRepositoryImpl(
      {required NetworkInfo networkInfo,
      required GetSubSectionsWebService getSubSectionsWebService})
      : _networkInfo = networkInfo,
        _getSubSectionsWebService = getSubSectionsWebService;

  @override
  Future<Either<NetworkExceptions, GetSubSectionsEntity>> getsubsections(
      int sectionId) async {
    if (await _networkInfo.isConnected) {
      try {
        final response =
            await _getSubSectionsWebService.getsubsections(sectionId);

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
