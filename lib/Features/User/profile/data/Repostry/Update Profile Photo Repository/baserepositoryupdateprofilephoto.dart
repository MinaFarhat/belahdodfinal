import 'dart:io';

import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/profile/data/Model/updatephotoentity.dart';
import 'package:dartz/dartz.dart';

abstract class BaseRepositoryUpdateProfilePhoto {
  Future<Either<NetworkExceptions, UpdatePhotoEntity>> updateProfilePhoto(
    File profilePhoto,
  );
}
