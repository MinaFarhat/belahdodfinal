import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/Vouchers/data/Model/getvouchersentity.dart';
import 'package:belahododfinal/Features/User/Vouchers/data/Repository/Get%20Vouchers%20Repository/baserepositorygetvouchers.dart';
import 'package:belahododfinal/Features/User/Vouchers/data/WebService/Get%20Vouchers%20WebService/getvoucherswebservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositoryGetVouchers)
class GetVouchersRepositoryImpl implements BaseRepositoryGetVouchers {
  final NetworkInfo _networkInfo;
  final GetVouchersWebService _getVouchersWebService;

  GetVouchersRepositoryImpl(
      {required NetworkInfo networkInfo,
      required GetVouchersWebService getVouchersWebService})
      : _networkInfo = networkInfo,
        _getVouchersWebService = getVouchersWebService;

  @override
  Future<Either<NetworkExceptions, GetVouchersEntity>> vouchers() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _getVouchersWebService.vouchers();

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
