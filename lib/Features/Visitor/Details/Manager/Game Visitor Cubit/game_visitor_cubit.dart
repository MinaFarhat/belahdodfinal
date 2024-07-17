import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/Visitor/Details/data/Model/gamevisitorentity.dart';
import 'package:belahododfinal/Features/Visitor/Details/data/Repository/Game%20Repository%20Visitor/baserepositorygamevisitor.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'game_visitor_state.dart';
part 'game_visitor_cubit.freezed.dart';

@injectable
class GameVisitorCubit extends Cubit<GameVisitorState> {
  GameVisitorCubit(this._baseRepositoryGameVisitor)
      : super(const GameVisitorState.initial());

  final BaseRepositoryGameVisitor _baseRepositoryGameVisitor;

  Future<void> gameDetailsVisitor(int productID) async {
    emit(const GameVisitorState.loading());

    final response =
        await _baseRepositoryGameVisitor.gameDetailsVisitor(productID);

    response.fold((l) => emit(GameVisitorState.error(l)),
        (r) => emit(GameVisitorState.success(r)));
  }
}
