import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/Visitor/Details/data/Model/gamevisitorentity.dart';
import 'package:dartz/dartz.dart';

abstract class BaseRepositoryGameVisitor {
  Future<Either<NetworkExceptions, GameVisitorEntity>> gameDetailsVisitor(
    int productID,
  );
}
