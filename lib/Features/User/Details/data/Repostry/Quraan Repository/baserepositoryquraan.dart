import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/Details/data/Model/quraanentity.dart';
import 'package:dartz/dartz.dart';

abstract class BaseRepositoryQuraan {
  Future<Either<NetworkExceptions, QuraanEntity>> quraanDetails();
}
