import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/Visitor/Details/data/Model/quraanvisitorentity.dart';
import 'package:belahododfinal/Features/Visitor/Details/data/Repository/Quraan%20Repository%20Visitor/baserepositoryquraanvisitor.dart';
import 'package:belahododfinal/Features/Visitor/Details/data/Web%20Service/quraan_webservicevisitor.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositoryQuraanVisitor)
class QuraanRepositoryVisitorImpl implements BaseRepositoryQuraanVisitor {
  final NetworkInfo _networkInfo;
  final QuraanWebServiceVisitor _quraanWebServiceVisitor;

  QuraanRepositoryVisitorImpl(
      {required NetworkInfo networkInfo,
      required QuraanWebServiceVisitor quraanWebServiceVisitor})
      : _networkInfo = networkInfo,
        _quraanWebServiceVisitor = quraanWebServiceVisitor;

  @override
  Future<Either<NetworkExceptions, QuraanVisitorEntity>> quraanDetailsVisitor(
      int productID) async {
    if (await _networkInfo.isConnected) {
      try {
        final response =
            await _quraanWebServiceVisitor.quraanDetailsVisitor(productID);

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
