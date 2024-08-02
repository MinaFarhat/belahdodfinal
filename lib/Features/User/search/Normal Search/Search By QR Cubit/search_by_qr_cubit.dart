import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/search/Normal%20Search/data/Model/searchbyqrentity.dart';
import 'package:belahododfinal/Features/User/search/Normal%20Search/data/Repository/baserepositorysearchbyqr.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'search_by_qr_state.dart';
part 'search_by_qr_cubit.freezed.dart';

@injectable
class SearchByQrCubit extends Cubit<SearchByQrState> {
  SearchByQrCubit(this._baseRepositorySearchByQr)
      : super(const SearchByQrState.initial());

  final BaseRepositorySearchByQr _baseRepositorySearchByQr;

  Future<void> searchByQR(String qrCode) async {
    emit(const SearchByQrState.loading());

    final response = await _baseRepositorySearchByQr.qrCode(qrCode);

    response.fold((l) => emit(SearchByQrState.error(l)),
        (r) => emit(SearchByQrState.success(r)));
  }
}
