import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/news/data/Model/getnewdetailsentity.dart';
import 'package:belahododfinal/Features/User/news/data/Repostry/News/baserepositorymewdetails.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'new_details_state.dart';
part 'new_details_cubit.freezed.dart';

@injectable
class NewDetailsCubit extends Cubit<NewDetailsState> {
  NewDetailsCubit(this._baseRepositoryNewDetails)
      : super(const NewDetailsState.initial());
  final BaseRepositoryNewDetails _baseRepositoryNewDetails;

  Future<void> getNewDetails(int newId) async {
    emit(const NewDetailsState.loading());

    final response = await _baseRepositoryNewDetails.getNewDetails(newId);

    response.fold((l) => emit(NewDetailsState.error(l)),
        (r) => emit(NewDetailsState.success(r)));
  }
}
