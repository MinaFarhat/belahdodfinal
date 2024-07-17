import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/Details/data/Model/bookentity.dart';
import 'package:belahododfinal/Features/User/Details/data/Repostry/Book%20Repository/baserepositorybook.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'book_state.dart';
part 'book_cubit.freezed.dart';

@injectable
class BookCubit extends Cubit<BookState> {
  BookCubit(this._baseRepositoryBook) : super(const BookState.initial());

  final BaseRepositoryBook _baseRepositoryBook;

  Future<void> bookDetails(int productID) async {
    emit(const BookState.loading());

    final response = await _baseRepositoryBook.bookDetails(productID);

    response.fold(
        (l) => emit(BookState.error(l)), (r) => emit(BookState.success(r)));
  }
}
