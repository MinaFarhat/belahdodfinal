import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/favorite/data/Model/getfavoritesentity.dart';
import 'package:belahododfinal/Features/User/favorite/data/Repostry/Get%20Favorites/baserepositorygetfavorites.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'getfavorites_state.dart';
part 'getfavorites_cubit.freezed.dart';

@injectable
class GetfavoritesCubit extends Cubit<GetfavoritesState> {
  GetfavoritesCubit(this._baseRepositoryGetFavorites)
      : super(const GetfavoritesState.initial());

  final BaseRepositoryGetFavorites _baseRepositoryGetFavorites;

  Future<void> getFavorites() async {
    emit(const GetfavoritesState.loading());

    final response = await _baseRepositoryGetFavorites.favorites();

    response.fold((l) => emit(GetfavoritesState.error(l)),
        (r) => emit(GetfavoritesState.success(r)));
  }
}
