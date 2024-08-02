import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/search/Populer%20Products/data/Model/popularproductsentity.dart';
import 'package:belahododfinal/Features/User/search/Populer%20Products/data/Repository/baserepositorypopularproducts.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'popular_products_state.dart';
part 'popular_products_cubit.freezed.dart';

@injectable
class PopularProductsCubit extends Cubit<PopularProductsState> {
  PopularProductsCubit(this._baseRepositoryPopularProducts)
      : super(const PopularProductsState.initial());

  final BaseRepositoryPopularProducts _baseRepositoryPopularProducts;

  Future<void> getPopularProducts() async {
    emit(const PopularProductsState.loading());

    final response = await _baseRepositoryPopularProducts.popularProducts();

    response.fold((l) => emit(PopularProductsState.error(l)),
        (r) => emit(PopularProductsState.success(r)));
  }
}
