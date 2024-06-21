import 'package:belahododfinal/Features/User/Details/Manager/Reaction%20Cubit/reaction_state.dart';
import 'package:bloc/bloc.dart';

class ReactionCubit extends Cubit<ReactionState> {
  ReactionCubit() : super(ReactionState());

  void like() {
    if (!state.isLike) {
      if (state.isDislike) {
        emit(state.copyWith(isDislike: false, amountOfReactions: state.amountOfReactions + 1));
      }
      emit(state.copyWith(isLike: true, amountOfReactions: state.amountOfReactions + 1));
    }
  }

  void dislike() {
    if (!state.isDislike && state.amountOfReactions > 0) {
      if (state.isLike) {
        emit(state.copyWith(isLike: false, amountOfReactions: state.amountOfReactions - 1));
      }
      emit(state.copyWith(isDislike: true, amountOfReactions: state.amountOfReactions - 1));
    }
  }

  void toggleFavorite() {
    emit(state.copyWith(isFavorite: !state.isFavorite));
  }

  void updateIndex(int index) {
    emit(state.copyWith(currentIndex: index));
  }
}
