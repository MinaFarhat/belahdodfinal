import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/Widgets/Dynamic%20Widgets/Dynamic%20Field%20Location/data/Model/getcitiesentity.dart';
import 'package:dartz/dartz.dart';

abstract class BaseRepositoryGetCities {
  Future<Either<NetworkExceptions, GetCitiesEntity>> cities();
}
