import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/news/data/Model/getalloffersentity.dart';
import 'package:belahododfinal/Features/User/news/data/Repostry/Get%20All%20Offers/baserepositorygetalloffers.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'getalloffers_state.dart';
part 'getalloffers_cubit.freezed.dart';

@injectable
class GetalloffersCubit extends Cubit<GetalloffersState> {
  GetalloffersCubit(this._baseRepositoryGetAllOffers)
      : super(const GetalloffersState.initial());

  final BaseRepositoryGetAllOffers _baseRepositoryGetAllOffers;

  Future<void> offers() async {
    emit(const GetalloffersState.loading());

    final response = await _baseRepositoryGetAllOffers.offers();

    response.fold((l) => emit(GetalloffersState.error(l)),
        (r) => emit(GetalloffersState.success(r)));
  }
}
