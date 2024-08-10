import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/note/data/Model/changestatenoteentity.dart';
import 'package:dartz/dartz.dart';

abstract class BaseRepositoryChangeStateNote {
  Future<Either<NetworkExceptions, ChangeStateNoteEntity>> changeStateNote(
    int noteId,
  );
}
