part of '../index.dart';

const String _kGetCurrentRankPendingId = 'GetCurrentRank';

@freezed
class GetCurrentRank with _$GetCurrentRank {
  @Implements<StartAction>()
  const factory GetCurrentRank.start(
    String uid, {
    @Default(_kGetCurrentRankPendingId) String pendingId,
  }) = GetCurrentRankStart;

  @Implements<StopAction>()
  const factory GetCurrentRank.successful(
    int rank, {
    @Default(_kGetCurrentRankPendingId) String pendingId,
  }) = GetCurrentRankSuccessful;

  @Implements<StopAction>()
  const factory GetCurrentRank.error(
    Object error,
    StackTrace stackTrace, {
    @Default(_kGetCurrentRankPendingId) String pendingId,
  }) = GetCurrentRankError;

  static String get pendingKey => _kGetCurrentRankPendingId;
}
