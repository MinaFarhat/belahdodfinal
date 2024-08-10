import 'package:belahododfinal/Core/Network/network_info.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/note/data/Model/changestatenoteentity.dart';
import 'package:belahododfinal/Features/User/note/data/Repostry/baserepositorychangestatenote.dart';
import 'package:belahododfinal/Features/User/note/data/Web%20Service/changestatenotewebservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseRepositoryChangeStateNote)
class ChangeStateNoteRepositoryImpl implements BaseRepositoryChangeStateNote {
  final NetworkInfo _networkInfo;
  final ChangeStateNoteWebService _changeStateNoteWebService;

  ChangeStateNoteRepositoryImpl(
      {required NetworkInfo networkInfo,
      required ChangeStateNoteWebService changeStateNoteWebService})
      : _networkInfo = networkInfo,
        _changeStateNoteWebService = changeStateNoteWebService;

  @override
  Future<Either<NetworkExceptions, ChangeStateNoteEntity>> changeStateNote(
      int noteId) async {
    if (await _networkInfo.isConnected) {
      try {
        final response =
            await _changeStateNoteWebService.changeStateNote(noteId);

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
