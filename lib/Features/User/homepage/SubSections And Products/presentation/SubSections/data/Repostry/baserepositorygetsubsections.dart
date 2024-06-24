import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/data/Model/getsubsectionsentity.dart';
import 'package:dartz/dartz.dart';

abstract class BaseRepositoryGetSubSections {
  Future<Either<NetworkExceptions, GetSubSectionsEntity>> getsubsections(
      int sectionId);
}
