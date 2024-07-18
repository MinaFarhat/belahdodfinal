import 'package:belahododfinal/Features/User/Details/Manager/Reaction%20Cubit/reaction_state.dart';
import 'package:bloc/bloc.dart';

class ReactionCubit extends Cubit<ReactionState> {
  ReactionCubit() : super(ReactionState());

  void initialize({
    required bool isFavorite,
    required bool isLike,
    required bool isDislike,
    required int likeCount,
  }) {
    emit(state.copyWith(
      isFavorite: isFavorite,
      isLike: isLike,
      isDislike: isDislike,
      likeCount: likeCount,
    ));
  }

  void toggleLike() {
    if (!state.isLike) {
      emit(state.copyWith(
          isLike: true, isDislike: false, likeCount: state.likeCount + 1));
    } else {
      emit(state.copyWith(isLike: false, likeCount: state.likeCount - 1));
    }
  }

  void toggleDislike() {
    if (!state.isDislike) {
      emit(state.copyWith(
          isDislike: true, isLike: false, likeCount: state.likeCount - 1));
    } else {
      emit(state.copyWith(isDislike: false, likeCount: state.likeCount + 1));
    }
  }

  void toggleFavorite() {
    emit(state.copyWith(isFavorite: !state.isFavorite));
  }

  void updateIndex(int index) {
    emit(state.copyWith(currentIndex: index));
  }
}
