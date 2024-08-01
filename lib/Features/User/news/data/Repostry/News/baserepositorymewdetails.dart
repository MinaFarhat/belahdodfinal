import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/news/data/Model/getnewdetailsentity.dart';
import 'package:dartz/dartz.dart';

abstract class BaseRepositoryNewDetails {
  Future<Either<NetworkExceptions, GetNewDetailsEntity>> getNewDetails(
    int newId,
  );
}
