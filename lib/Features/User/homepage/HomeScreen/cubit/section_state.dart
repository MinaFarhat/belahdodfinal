part of 'section_cubit.dart';

@freezed
class SectionState with _$SectionState {
  const factory SectionState.initial() = _Initial;
  const factory SectionState.loading() = _Loading;
  const factory SectionState.success(SectionEntity sectionentity) = _Success;
  const factory SectionState.error(NetworkExceptions networkExceptions) =
      _Error;
}
