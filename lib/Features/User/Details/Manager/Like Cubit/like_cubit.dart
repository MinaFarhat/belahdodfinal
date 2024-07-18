import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/Details/data/Model/likeentity.dart';
import 'package:belahododfinal/Features/User/Details/data/Repostry/Like%20Repository/baserepositorylike.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'like_state.dart';
part 'like_cubit.freezed.dart';

@injectable
class LikeCubit extends Cubit<LikeState> {
  LikeCubit(this._baseRepositoryLike) : super(const LikeState.initial());

  final BaseRepositoryLike _baseRepositoryLike;
  Future<void> like(int productId) async {
    emit(const LikeState.loading());

    final response = await _baseRepositoryLike.like(productId);

    response.fold(
        (l) => emit(LikeState.error(l)), (r) => emit(LikeState.success(r)));
  }
}
