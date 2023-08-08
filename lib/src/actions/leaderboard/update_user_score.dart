part of '../index.dart';

const String _kUpdateUserScorePendingId = 'UpdateUserScore';

@freezed
class UpdateUserScore with _$UpdateUserScore {
  @Implements<StartAction>()
  const factory UpdateUserScore.start(
    String uid,
    int score, {
    @Default(_kUpdateUserScorePendingId) String pendingId,
  }) = UpdateUserScoreStart;

  @Implements<StopAction>()
  const factory UpdateUserScore.successful({
    @Default(_kUpdateUserScorePendingId) String pendingId,
  }) = UpdateUserScoreSuccessful;

  @Implements<StopAction>()
  const factory UpdateUserScore.error(
    Object error,
    StackTrace stackTrace, {
    @Default(_kUpdateUserScorePendingId) String pendingId,
  }) = UpdateUserScoreError;

  static String get pendingKey => _kUpdateUserScorePendingId;
}
