import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/Visitor/Details/data/Model/stationeryvisitorentity.dart';
import 'package:dartz/dartz.dart';

abstract class BaseRepositoryStationeryVisitor {
  Future<Either<NetworkExceptions, StationeryVisitorEntity>>
      stationeryDetailsVisitor(
    int productID,
  );
}
