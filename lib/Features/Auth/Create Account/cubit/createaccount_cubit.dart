import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/Auth/Create%20Account/Data/Repostry/basereposotrycreateaccount.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'createaccount_state.dart';
part 'createaccount_cubit.freezed.dart';

@injectable
class CreateaccountCubit extends Cubit<CreateaccountState> {
  CreateaccountCubit(this._baseReposotryCreateAccount)
      : super(const CreateaccountState.initial());

  final BaseReposotryCreateAccount _baseReposotryCreateAccount;

  Future<void> emitCreateAccount({
    required String name,
    required String password,
    required String confirmPassword,
    required String phoneNumber,
    required String city,
    required String address,
    required String role,
  }) async {
    emit(const CreateaccountState.loading());
    final response = await _baseReposotryCreateAccount.createaccount(
      name,
      password,
      confirmPassword,
      phoneNumber,
      city,
      address,
      role,
    );
    response.fold(
      (l) => emit(CreateaccountState.error(l)),
      (_) => emit(const CreateaccountState.success()),
    );
  }
}
