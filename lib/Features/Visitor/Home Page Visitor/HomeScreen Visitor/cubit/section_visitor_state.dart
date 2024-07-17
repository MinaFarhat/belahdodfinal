part of 'section_visitor_cubit.dart';

@freezed
class SectionVisitorState with _$SectionVisitorState {
  const factory SectionVisitorState.initial() = _Initial;
  const factory SectionVisitorState.loading() = _Loading;
  const factory SectionVisitorState.success(
      SectionVisitorEntity sectionvisitorentity) = _Success;
  const factory SectionVisitorState.error(NetworkExceptions networkExceptions) =
      _Error;
}
