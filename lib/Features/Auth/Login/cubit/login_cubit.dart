import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/Auth/Login/data/Model/loginentity.dart';
import 'package:belahododfinal/Features/Auth/Login/data/Repostry/basereposotrylogin.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._baseReposotryLogin) : super(const LoginState.initial());

  final BaseReposotryLogin _baseReposotryLogin;

  Future<void> emitLogin(
    String name,
    String password,
  ) async {
    emit(const LoginState.loading());
    final response = await _baseReposotryLogin.login(name, password);

    response.fold(
        (l) => emit(LoginState.error(l)), (r) => emit(LoginState.success(r)));
  }
}
