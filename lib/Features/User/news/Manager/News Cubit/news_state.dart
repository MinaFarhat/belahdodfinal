part of 'news_cubit.dart';

@freezed
class NewsState with _$NewsState {
  const factory NewsState.initial() = _Initial;
  const factory NewsState.loading() = _Loading;
  const factory NewsState.success(GetNewsEntity getnewsentity) = _Success;
  const factory NewsState.error(NetworkExceptions networkExceptions) = _Error;
}
