import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/news/data/Model/getnewsentity.dart';
import 'package:belahododfinal/Features/User/news/data/Repostry/News/baserepositorynews.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'news_state.dart';
part 'news_cubit.freezed.dart';

@injectable
class NewsCubit extends Cubit<NewsState> {
  NewsCubit(this._baseRepositoryNews) : super(const NewsState.initial());

  final BaseRepositoryNews _baseRepositoryNews;

  Future<void> getNews() async {
    emit(const NewsState.loading());

    final response = await _baseRepositoryNews.getNews();

    response.fold(
        (l) => emit(NewsState.error(l)), (r) => emit(NewsState.success(r)));
  }
}
