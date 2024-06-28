import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/news/data/Model/getnewsentity.dart';
import 'package:dartz/dartz.dart';

abstract class BaseRepositoryNews {
  Future<Either<NetworkExceptions, GetNewsEntity>> getNews();
}