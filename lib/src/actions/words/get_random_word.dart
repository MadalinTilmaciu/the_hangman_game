part of '../index.dart';

const String _kGetRandomWordPendingId = 'GetRandomWord';

@freezed
class GetRandomWord with _$GetRandomWord {
  @Implements<StartAction>()
  const factory GetRandomWord.start({
    @Default(_kGetRandomWordPendingId) String pendingId,
  }) = GetRandomWordStart;

  @Implements<StopAction>()
  const factory GetRandomWord.successful(
    Word word, {
    @Default(_kGetRandomWordPendingId) String pendingId,
  }) = GetRandomWordSuccessful;

  @Implements<StopAction>()
  const factory GetRandomWord.error(
    Object error,
    StackTrace stackTrace, {
    @Default(_kGetRandomWordPendingId) String pendingId,
  }) = GetRandomWordError;

  static String get pendingKey => _kGetRandomWordPendingId;
}
