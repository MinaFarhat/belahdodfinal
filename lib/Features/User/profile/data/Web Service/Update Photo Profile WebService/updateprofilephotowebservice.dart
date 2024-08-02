import 'dart:io';

import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Core/api/end_points.dart';
import 'package:belahododfinal/Features/User/profile/data/Model/updatephotoentity.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract class UpdateProfilePhotoWebService {
  Future<UpdatePhotoEntity> updateProfilePhoto(File profilePhoto);
}

@Singleton(as: UpdateProfilePhotoWebService)
class UpdateProfilePhotoWebServiceImpl implements UpdateProfilePhotoWebService {
  final ApiConsumer _apiConsumer;

  UpdateProfilePhotoWebServiceImpl(this._apiConsumer);

  Future<FormData> formAddFile(File profilePhoto) async {
    final formData = FormData.fromMap({
      'image[]': await MultipartFile.fromFile(profilePhoto.path),
    });
    return formData;
  }

  @override
  Future<UpdatePhotoEntity> updateProfilePhoto(File profilePhoto) async {
    final fromData = await formAddFile(profilePhoto);
    final response = await _apiConsumer.post(
      EndPoints.updateProfilePicture,
      body: fromData,
    );
    return UpdatePhotoEntity.fromJson(response);
  }
}
