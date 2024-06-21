import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:belahododfinal/Features/Auth/Login/data/Model/loginentity.dart';
import 'package:belahododfinal/Features/Auth/Login/data/Repostry/basereposotrylogin.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._baseReposotryLogin, this._sharedPreferencesUtils)
      : super(const LoginState.initial());

  final BaseReposotryLogin _baseReposotryLogin;
  final SharedPreferencesUtils _sharedPreferencesUtils;

  Future<void> emitLogin(
    String name,
    String password,
  ) async {
    emit(const LoginState.loading());
    final response = await _baseReposotryLogin.login(name, password);

     response.fold(
      (l) => emit(LoginState.error(l)),
      (r) {
        _sharedPreferencesUtils.setToken(r.token);
        _sharedPreferencesUtils.setId(r.id);
        emit(LoginState.success(r));
      },
    );
  }
  }
