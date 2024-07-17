import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/Visitor/Details/data/Model/bookvisitorentity.dart';
import 'package:belahododfinal/Features/Visitor/Details/data/Repository/Book%20Repository%20Visitor/baserepositorybookvisitor.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'book_visitor_state.dart';
part 'book_visitor_cubit.freezed.dart';

@injectable
class BookVisitorCubit extends Cubit<BookVisitorState> {
  BookVisitorCubit(this._baseRepositoryBookVisitor)
      : super(const BookVisitorState.initial());
  final BaseRepositoryBookVisitor _baseRepositoryBookVisitor;

  Future<void> bookDetailsVisitor(int productID) async {
    emit(const BookVisitorState.loading());

    final response =
        await _baseRepositoryBookVisitor.bookDetailsVisitor(productID);

    response.fold((l) => emit(BookVisitorState.error(l)),
        (r) => emit(BookVisitorState.success(r)));
  }
}
