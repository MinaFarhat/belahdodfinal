import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/Details/data/Model/gameentity.dart';
import 'package:belahododfinal/Features/User/Details/data/Repostry/Game%20Repository/baserepositorygame.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'game_state.dart';
part 'game_cubit.freezed.dart';


@injectable
class GameCubit extends Cubit<GameState> {
  GameCubit(this._baseRepositoryGame) : super(const GameState.initial());
   final BaseRepositoryGame _baseRepositoryGame;

  Future<void> gameDetails(int productID) async {
    emit(const GameState.loading());

    final response = await _baseRepositoryGame.gameDetails(productID);

    response.fold((l) => emit(GameState.error(l)),
        (r) => emit(GameState.success(r)));
  }
}
