import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/profile/data/Model/getuserinfo2entity.dart';
import 'package:belahododfinal/Features/User/profile/data/Repostry/User%20Info%20Repository/baserepositorygetuserinfo2.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_user_info2_state.dart';
part 'get_user_info2_cubit.freezed.dart';

@injectable
class GetUserInfo2Cubit extends Cubit<GetUserInfo2State> {
  GetUserInfo2Cubit(this._baseRepositoryGetUserInfo2)
      : super(const GetUserInfo2State.initial());
  final BaseRepositoryGetUserInfo2 _baseRepositoryGetUserInfo2;

  Future<void> getUserInfo2() async {
    emit(const GetUserInfo2State.loading());

    final response = await _baseRepositoryGetUserInfo2.userInfo2();

    response.fold((l) => emit(GetUserInfo2State.error(l)),
        (r) => emit(GetUserInfo2State.success(r)));
  }
}
