import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/Details/data/Model/dislikeentity.dart';
import 'package:belahododfinal/Features/User/Details/data/Repostry/DisLike%20Repository/baserepositorydislike.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'dis_like_state.dart';
part 'dis_like_cubit.freezed.dart';

@injectable
class DisLikeCubit extends Cubit<DisLikeState> {
  DisLikeCubit(this._baseRepositoryDisLike)
      : super(const DisLikeState.initial());

  final BaseRepositoryDisLike _baseRepositoryDisLike;
  Future<void> disLike(int productId) async {
    emit(const DisLikeState.loading());

    final response = await _baseRepositoryDisLike.disLike(productId);

    response.fold((l) => emit(DisLikeState.error(l)),
        (r) => emit(DisLikeState.success(r)));
  }
}
