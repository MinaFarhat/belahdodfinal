import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/profile/data/Model/getuserinfoentity.dart';
import 'package:belahododfinal/Features/User/profile/data/Repostry/User%20Info%20Repository/baserepositorygetuserinfo.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_user_info_state.dart';
part 'get_user_info_cubit.freezed.dart';

@injectable
class GetUserInfoCubit extends Cubit<GetUserInfoState> {
  GetUserInfoCubit(this._baseRepositoryGetUserInfo)
      : super(const GetUserInfoState.initial());

  final BaseRepositoryGetUserInfo _baseRepositoryGetUserInfo;

  Future<void> getUserInfo() async {
    emit(const GetUserInfoState.loading());

    final response = await _baseRepositoryGetUserInfo.userInfo();

    response.fold((l) => emit(GetUserInfoState.error(l)),
        (r) => emit(GetUserInfoState.success(r)));
  }
}
