import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/Visitor/Details/data/Model/stationeryvisitorentity.dart';
import 'package:belahododfinal/Features/Visitor/Details/data/Repository/Stationery%20Repository%20Visitor/baserepositorystationeryvisitor.dart';
import 'package:belahododfinal/Features/Visitor/Details/data/Web%20Service/stationery_webservicevisitor.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositoryStationeryVisitor)
class StationeryRepositoryVisitorImpl
    implements BaseRepositoryStationeryVisitor {
  final NetworkInfo _networkInfo;
  final StationeryWebServiceVisitor _stationeryWebServiceVisitor;

  StationeryRepositoryVisitorImpl(
      {required NetworkInfo networkInfo,
      required StationeryWebServiceVisitor stationeryWebServiceVisitor})
      : _networkInfo = networkInfo,
        _stationeryWebServiceVisitor = stationeryWebServiceVisitor;

  @override
  Future<Either<NetworkExceptions, StationeryVisitorEntity>>
      stationeryDetailsVisitor(int productID) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _stationeryWebServiceVisitor
            .stationeryDetailsVisitor(productID);

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
