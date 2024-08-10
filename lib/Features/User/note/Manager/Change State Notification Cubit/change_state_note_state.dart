part of 'change_state_note_cubit.dart';

@freezed
class ChangeStateNoteState with _$ChangeStateNoteState {
  const factory ChangeStateNoteState.initial() = _Initial;
  const factory ChangeStateNoteState.loading() = _Loading;
  const factory ChangeStateNoteState.success(
      ChangeStateNoteEntity changestatenoteentity) = _Success;
  const factory ChangeStateNoteState.error(
      NetworkExceptions networkExceptions) = _Error;
}
