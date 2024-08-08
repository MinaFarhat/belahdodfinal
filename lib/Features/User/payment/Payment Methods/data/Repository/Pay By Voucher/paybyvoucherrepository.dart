import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/payment/Payment%20Methods/data/Model/paybyvoucherentity.dart';
import 'package:belahododfinal/Features/User/payment/Payment%20Methods/data/Repository/Pay%20By%20Voucher/baserepositorypaybyvoucher.dart';
import 'package:belahododfinal/Features/User/payment/Payment%20Methods/data/Web%20Service/Pay%20By%20Voucher/paybyvoucherwebservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositoryPayByVoucher)
class PatByVoucherRepositoryImpl implements BaseRepositoryPayByVoucher {
  final NetworkInfo _networkInfo;
  final PayByVoucherWebService _payByVoucherWebService;

  PatByVoucherRepositoryImpl(
      {required NetworkInfo networkInfo,
      required PayByVoucherWebService payByVoucherWebService})
      : _networkInfo = networkInfo,
        _payByVoucherWebService = payByVoucherWebService;

  @override
  Future<Either<NetworkExceptions, PayByVoucherEntity>> payByVoucher(
      int orderId, int voucherId) async {
    if (await _networkInfo.isConnected) {
      try {
        final response =
            await _payByVoucherWebService.payByVoucher(orderId, voucherId);

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
