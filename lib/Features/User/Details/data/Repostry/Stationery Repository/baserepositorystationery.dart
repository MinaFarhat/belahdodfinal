import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/Details/data/Model/stationeryentity.dart';
import 'package:dartz/dartz.dart';

abstract class BaseRepositoryStationery {
  Future<Either<NetworkExceptions, StationeryEntity>> stationeryDetails();
}
