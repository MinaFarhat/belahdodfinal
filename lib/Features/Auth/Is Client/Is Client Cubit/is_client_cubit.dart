import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/Auth/Is%20Client/data/model/iscliententity.dart';
import 'package:belahododfinal/Features/Auth/Is%20Client/data/repository/baserepositoryisclient.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'is_client_state.dart';
part 'is_client_cubit.freezed.dart';

@injectable
class IsClientCubit extends Cubit<IsClientState> {
  IsClientCubit(this._baseRepositoryIsClient)
      : super(const IsClientState.initial());

  final BaseRepositoryIsClient _baseRepositoryIsClient;

  Future<void> isClient() async {
    emit(const IsClientState.loading());

    final response = await _baseRepositoryIsClient.isClient();

    response.fold((l) => emit(IsClientState.error(l)),
        (r) => emit(IsClientState.success(r)));
  }
}
