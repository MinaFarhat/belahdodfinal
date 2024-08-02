part of 'update_profile_photo_cubit.dart';

@freezed
class UpdateProfilePhotoState with _$UpdateProfilePhotoState {
  const factory UpdateProfilePhotoState.initial() = _Initial;
  const factory UpdateProfilePhotoState.loading() = _Loading;
  const factory UpdateProfilePhotoState.success(
      UpdatePhotoEntity updatephotoentity) = _Success;
  const factory UpdateProfilePhotoState.error(
      NetworkExceptions networkExceptions) = _Error;
}
