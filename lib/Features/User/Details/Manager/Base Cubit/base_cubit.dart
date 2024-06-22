import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/Details/data/Model/baseentity.dart';
import 'package:belahododfinal/Features/User/Details/data/Repostry/Base%20Repository/baserepositorybase.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'base_state.dart';
part 'base_cubit.freezed.dart';

@injectable
class BaseCubit extends Cubit<BaseState> {
  BaseCubit(this._baseRepositoryBase) : super(const BaseState.initial());

  final BaseRepositoryBase _baseRepositoryBase;

  Future<void> baseDetails(int productID) async {
    emit(const BaseState.loading());

    final response = await _baseRepositoryBase.baseDetails(productID);

    response.fold((l) => emit(BaseState.error(l)),
        (r) => emit(BaseState.success(r)));
  }
}
