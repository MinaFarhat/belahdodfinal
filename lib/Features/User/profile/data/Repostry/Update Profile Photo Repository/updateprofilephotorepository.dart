import 'dart:io';

import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/profile/data/Model/updatephotoentity.dart';
import 'package:belahododfinal/Features/User/profile/data/Repostry/Update%20Profile%20Photo%20Repository/baserepositoryupdateprofilephoto.dart';
import 'package:belahododfinal/Features/User/profile/data/Web%20Service/Update%20Photo%20Profile%20WebService/updateprofilephotowebservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositoryUpdateProfilePhoto)
class UpdateProfilePhotoRepositoryImpl
    implements BaseRepositoryUpdateProfilePhoto {
  final NetworkInfo _networkInfo;
  final UpdateProfilePhotoWebService _updateProfilePhotoWebService;

  UpdateProfilePhotoRepositoryImpl(
      {required NetworkInfo networkInfo,
      required UpdateProfilePhotoWebService updateProfilePhotoWebService})
      : _networkInfo = networkInfo,
        _updateProfilePhotoWebService = updateProfilePhotoWebService;

  @override
  Future<Either<NetworkExceptions, UpdatePhotoEntity>> updateProfilePhoto(
      File profilePhoto) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _updateProfilePhotoWebService
            .updateProfilePhoto(profilePhoto);

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
