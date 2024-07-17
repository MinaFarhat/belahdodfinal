import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/Visitor/Details/data/Model/basevisitorentity.dart';
import 'package:dartz/dartz.dart';

abstract class BaseRepositoryBaseVisitor {
  Future<Either<NetworkExceptions, BaseVisitorEntity>> baseDetailsVisitor(
    int productID,
  );
}
