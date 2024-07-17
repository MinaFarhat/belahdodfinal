part of 'quraan_visitor_cubit.dart';

@freezed
class QuraanVisitorState with _$QuraanVisitorState {
  const factory QuraanVisitorState.initial() = _Initial;
  const factory QuraanVisitorState.loading() = _Loading;
  const factory QuraanVisitorState.success(
      QuraanVisitorEntity quraanvisitorentity) = _Success;
  const factory QuraanVisitorState.error(NetworkExceptions networkExceptions) =
      _Error;
}
