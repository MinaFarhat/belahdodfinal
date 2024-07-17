import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/Visitor/Details/data/Model/quraanvisitorentity.dart';
import 'package:dartz/dartz.dart';

abstract class BaseRepositoryQuraanVisitor {
  Future<Either<NetworkExceptions, QuraanVisitorEntity>> quraanDetailsVisitor(
    int productID,
  );
}
