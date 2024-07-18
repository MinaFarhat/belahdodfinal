import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/Details/data/Model/ratingentity.dart';
import 'package:belahododfinal/Features/User/Details/data/Repostry/Rating/baserepositoryrating.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'rating_state.dart';
part 'rating_cubit.freezed.dart';

@injectable
class RatingCubit extends Cubit<RatingState> {
  RatingCubit(this._baseRepositoryRating) : super(const RatingState.initial());

  final BaseRepositoryRating _baseRepositoryRating;

  Future<void> rating(int productId, int rate) async {
    emit(const RatingState.loading());

    final response = await _baseRepositoryRating.rating(productId, rate);

    response.fold(
        (l) => emit(RatingState.error(l)), (r) => emit(RatingState.success(r)));
  }
}
