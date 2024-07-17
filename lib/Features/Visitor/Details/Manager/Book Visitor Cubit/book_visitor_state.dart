part of 'book_visitor_cubit.dart';

@freezed
class BookVisitorState with _$BookVisitorState {
  const factory BookVisitorState.initial() = _Initial;
  const factory BookVisitorState.loading() = _Loading;
  const factory BookVisitorState.success(BookVisitorEntity bookvisitorentity) =
      _Success;
  const factory BookVisitorState.error(NetworkExceptions networkExceptions) =
      _Error;
}
