import 'dart:io';

import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/profile/data/Model/updatephotoentity.dart';
import 'package:belahododfinal/Features/User/profile/data/Repostry/Update%20Profile%20Photo%20Repository/baserepositoryupdateprofilephoto.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'update_profile_photo_state.dart';
part 'update_profile_photo_cubit.freezed.dart';

@injectable
class UpdateProfilePhotoCubit extends Cubit<UpdateProfilePhotoState> {
  UpdateProfilePhotoCubit(this._baseRepsositoryUpdateProfilePhoto)
      : super(const UpdateProfilePhotoState.initial());

  final BaseRepositoryUpdateProfilePhoto _baseRepsositoryUpdateProfilePhoto;

  Future<void> updateProfilePhoto(File profilePhoto) async {
    emit(const UpdateProfilePhotoState.loading());

    final response = await _baseRepsositoryUpdateProfilePhoto
        .updateProfilePhoto(profilePhoto);

    response.fold((l) => emit(UpdateProfilePhotoState.error(l)),
        (r) => emit(UpdateProfilePhotoState.success(r)));
  }
}
