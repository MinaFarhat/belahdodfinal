part of 'base_visitor_cubit.dart';

@freezed
class BaseVisitorState with _$BaseVisitorState {
  const factory BaseVisitorState.initial() = _Initial;
  const factory BaseVisitorState.loading() = _Loading;
  const factory BaseVisitorState.success(BaseVisitorEntity basevisitorentity) =
      _Success;
  const factory BaseVisitorState.error(NetworkExceptions networkExceptions) =
      _Error;
}
