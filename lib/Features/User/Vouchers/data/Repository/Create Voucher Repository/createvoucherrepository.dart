import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/Vouchers/data/Model/createvoucherentity.dart';
import 'package:belahododfinal/Features/User/Vouchers/data/Repository/Create%20Voucher%20Repository/baserepositorycreatevoucher.dart';
import 'package:belahododfinal/Features/User/Vouchers/data/WebService/Create%20Voucher%20WebService/createvoucherwebservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositoryCreateVoucher)
class CreateVoucherRepositoryImpl implements BaseRepositoryCreateVoucher {
  final NetworkInfo _networkInfo;
  final CreateVoucherWebService _createVoucherWebService;

  CreateVoucherRepositoryImpl(
      {required NetworkInfo networkInfo,
      required CreateVoucherWebService createVoucherWebService})
      : _networkInfo = networkInfo,
        _createVoucherWebService = createVoucherWebService;

  @override
  Future<Either<NetworkExceptions, CreateVoucherEntity>> createVoucher(
      int totalValue, String? notes, String phoneNumber) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _createVoucherWebService.createVoucher(
            totalValue, notes, phoneNumber);

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
