import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/profile/data/Model/updateuserinfoentity.dart';
import 'package:belahododfinal/Features/User/profile/data/Repostry/Update%20User%20Info%20Repository/baserepositoryupdateuserinfo.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'update_user_info_state.dart';
part 'update_user_info_cubit.freezed.dart';

@injectable
class UpdateUserInfoCubit extends Cubit<UpdateUserInfoState> {
  UpdateUserInfoCubit(this._baseRepositoryUpdateUserInfo)
      : super(const UpdateUserInfoState.initial());
  final BaseRepositoryUpdateUserInfo _baseRepositoryUpdateUserInfo;

  Future<void> updateUserInfo({
    required String name,
    required String phoneNumber,
    required String address,
    required String city,
  }) async {
    emit(const UpdateUserInfoState.loading());

    final response = await _baseRepositoryUpdateUserInfo.updateUserInfo(
      name,
      phoneNumber,
      address,
      city,
    );

    response.fold((l) => emit(UpdateUserInfoState.error(l)),
        (r) => emit(UpdateUserInfoState.success(r)));
  }
}
