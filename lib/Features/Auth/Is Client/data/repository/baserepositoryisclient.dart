import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/Auth/Is%20Client/data/model/iscliententity.dart';
import 'package:dartz/dartz.dart';

abstract class BaseRepositoryIsClient {
  Future<Either<NetworkExceptions, IsClientEntity>> isClient();
}
