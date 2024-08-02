import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/profile/data/Model/deleteaccountentity.dart';
import 'package:belahododfinal/Features/User/profile/data/Repostry/Delete%20Account%20Repository/baserepositorydeleteaccount.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'delete_account_state.dart';
part 'delete_account_cubit.freezed.dart';

@injectable
class DeleteAccountCubit extends Cubit<DeleteAccountState> {
  DeleteAccountCubit(this._baseRepositoryDeleteAccount)
      : super(const DeleteAccountState.initial());

  final BaseRepositoryDeleteAccount _baseRepositoryDeleteAccount;

  Future<void> deleteAccount() async {
    emit(const DeleteAccountState.loading());

    final response = await _baseRepositoryDeleteAccount.deleteAccount();

    response.fold((l) => emit(DeleteAccountState.error(l)),
        (r) => emit(DeleteAccountState.success(r)));
  }
}
