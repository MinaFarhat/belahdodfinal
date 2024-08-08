import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/payment/Payment%20Methods/data/Model/paybyvoucherentity.dart';
import 'package:dartz/dartz.dart';

abstract class BaseRepositoryPayByVoucher {
  Future<Either<NetworkExceptions, PayByVoucherEntity>> payByVoucher(
    int orderId,
    int voucherId,
  );
}
