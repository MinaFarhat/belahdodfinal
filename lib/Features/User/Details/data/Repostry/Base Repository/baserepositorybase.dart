import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/Details/data/Model/baseentity.dart';
import 'package:dartz/dartz.dart';

abstract class BaseRepositoryBase {
  Future<Either<NetworkExceptions, BaseEntity>> baseDetails();
}
