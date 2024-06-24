import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Presentation/Products%20Of%20SubSections/data/Model/getproductsofsubsectionentity.dart';
import 'package:dartz/dartz.dart';

abstract class BaseRepositoryGetProductsOfSubSection {
  Future<Either<NetworkExceptions, GetProductsofSubSectionEntity>>
      getproductsofsubsection(int subSectionId);
}
