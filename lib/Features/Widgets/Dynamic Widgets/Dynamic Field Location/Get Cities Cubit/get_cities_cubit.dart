import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/Widgets/Dynamic%20Widgets/Dynamic%20Field%20Location/data/Model/getcitiesentity.dart';
import 'package:belahododfinal/Features/Widgets/Dynamic%20Widgets/Dynamic%20Field%20Location/data/Repository/baserepositorygetcities.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_cities_state.dart';
part 'get_cities_cubit.freezed.dart';

@injectable
class GetCitiesCubit extends Cubit<GetCitiesState> {
  GetCitiesCubit(this._baseRepositoryGetCities)
      : super(const GetCitiesState.initial());

  final BaseRepositoryGetCities _baseRepositoryGetCities;

  Future<void> getCities() async {
    emit(const GetCitiesState.loading());

    final response = await _baseRepositoryGetCities.cities();

    response.fold((l) => emit(GetCitiesState.error(l)),
        (r) => emit(GetCitiesState.success(r)));
  }
}
