import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/news/data/Model/detailsofoffer.dart';
import 'package:belahododfinal/Features/User/news/data/Repostry/Details%20of%20Offer/baserepositorydetailsofoffer.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'detailsofoffer_state.dart';
part 'detailsofoffer_cubit.freezed.dart';

@injectable
class DetailsofofferCubit extends Cubit<DetailsofofferState> {
  DetailsofofferCubit(this._baseRepositoryDetailsofOffer)
      : super(const DetailsofofferState.initial());

  final BaseRepositoryDetailsofOffer _baseRepositoryDetailsofOffer;

  Future<void> detailsofOffer(int offerId) async {
    emit(const DetailsofofferState.loading());

    final response =
        await _baseRepositoryDetailsofOffer.detailsofOffer(offerId);

    response.fold((l) => emit(DetailsofofferState.error(l)),
        (r) => emit(DetailsofofferState.success(r)));
  }
}
