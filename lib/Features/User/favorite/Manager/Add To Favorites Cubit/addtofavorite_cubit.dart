import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/favorite/data/Model/addtofavoriteentity.dart';
import 'package:belahododfinal/Features/User/favorite/data/Repostry/Is%20Favorite/baserepositoryaddtofavorites.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'addtofavorite_state.dart';
part 'addtofavorite_cubit.freezed.dart';

@injectable
class AddtofavoriteCubit extends Cubit<AddtofavoriteState> {
  AddtofavoriteCubit(this._baseRepositoryAddToFavorites)
      : super(const AddtofavoriteState.initial());
  final BaseRepositoryAddToFavorites _baseRepositoryAddToFavorites;
  Future<void> addtofavorites(int favoriteProductId) async {
    emit(const AddtofavoriteState.loading());

    final response =
        await _baseRepositoryAddToFavorites.addtofavorites(favoriteProductId);

    response.fold((l) => emit(AddtofavoriteState.error(l)),
        (r) => emit(AddtofavoriteState.success(r)));
  }
}
