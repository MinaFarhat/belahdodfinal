import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/Details/data/Model/quraanentity.dart';
import 'package:belahododfinal/Features/User/Details/data/Repostry/Quraan%20Repository/baserepositoryquraan.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'quraan_state.dart';
part 'quraan_cubit.freezed.dart';

@injectable
class QuraanCubit extends Cubit<QuraanState> {
  QuraanCubit(this._baseRepositoryQuraan) : super(const QuraanState.initial());

  final BaseRepositoryQuraan _baseRepositoryQuraan;

  Future<void> quraanDetails(int productID) async {
    emit(const QuraanState.loading());

    final response = await _baseRepositoryQuraan.quraanDetails(productID);

    response.fold(
        (l) => emit(QuraanState.error(l)), (r) => emit(QuraanState.success(r)));
  }
}
