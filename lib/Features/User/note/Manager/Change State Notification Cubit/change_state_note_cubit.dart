import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/note/data/Model/changestatenoteentity.dart';
import 'package:belahododfinal/Features/User/note/data/Repostry/baserepositorychangestatenote.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'change_state_note_state.dart';
part 'change_state_note_cubit.freezed.dart';

@injectable
class ChangeStateNoteCubit extends Cubit<ChangeStateNoteState> {
  ChangeStateNoteCubit(this._baseRepositoryChangeStateNote)
      : super(const ChangeStateNoteState.initial());

  final BaseRepositoryChangeStateNote _baseRepositoryChangeStateNote;

  Future<void> changeStateNote(int noteId) async {
    emit(const ChangeStateNoteState.loading());

    final response =
        await _baseRepositoryChangeStateNote.changeStateNote(noteId);

    response.fold((l) => emit(ChangeStateNoteState.error(l)),
        (r) => emit(ChangeStateNoteState.success(r)));
  }
}
