import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/payment/Address/data/Model/sendofferentity.dart';
import 'package:belahododfinal/Features/User/payment/Address/data/Repository/baserepositorysendoffer.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'send_offer_state.dart';
part 'send_offer_cubit.freezed.dart';

@injectable
class SendOfferCubit extends Cubit<SendOfferState> {
  SendOfferCubit(this._baseRepositorySendOffer)
      : super(const SendOfferState.initial());

  final BaseRepositorySendOffer _baseRepositorySendOffer;

  Future<void> sendOffer(
      int cityId, String address, String? notes, int offerId) async {
    emit(const SendOfferState.loading());

    final response = await _baseRepositorySendOffer.sendOffer(
        cityId, address, notes, offerId);

    response.fold((l) => emit(SendOfferState.error(l)),
        (r) => emit(SendOfferState.success(r)));
  }
}
