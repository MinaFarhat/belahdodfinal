import 'dart:io';

import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/wallet/data/model/addbalanceentity.dart';
import 'package:dartz/dartz.dart';

abstract class BaseRepositoryAddBalance {
  Future<Either<NetworkExceptions, AddBalanceEntity>> addBalance(
    File transferImage,
  );
}
