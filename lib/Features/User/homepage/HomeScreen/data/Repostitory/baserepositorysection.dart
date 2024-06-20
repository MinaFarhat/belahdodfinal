import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/homepage/HomeScreen/data/Model/sectionentity.dart';
import 'package:dartz/dartz.dart';

abstract class BaseRepositorySection {
  Future<Either<NetworkExceptions, SectionEntity>> sections();
}
