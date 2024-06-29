import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/news/data/Model/getadsentity.dart';
import 'package:belahododfinal/Features/User/news/data/Repostry/Ads/baserepositoryads.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'ads_state.dart';
part 'ads_cubit.freezed.dart';

@injectable
class AdsCubit extends Cubit<AdsState> {
  AdsCubit(this._baseRepositoryAds) : super(const AdsState.initial());

  final BaseRepositoryAds _baseRepositoryAds;

  Future<void> getAds() async {
    emit(const AdsState.loading());

    final response = await _baseRepositoryAds.getAds();

    response.fold(
        (l) => emit(AdsState.error(l)), (r) => emit(AdsState.success(r)));
  }
}
