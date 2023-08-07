part of '../index.dart';

const String _kGetLeaderboardPendingId = 'GetLeaderboard';

@freezed
class GetLeaderboard with _$GetLeaderboard {
  @Implements<StartAction>()
  const factory GetLeaderboard.start({
    @Default(_kGetLeaderboardPendingId) String pendingId,
  }) = GetLeaderboardStart;

  @Implements<StopAction>()
  const factory GetLeaderboard.successful(
    List<LeaderboardUser> leaderboardList, {
    @Default(_kGetLeaderboardPendingId) String pendingId,
  }) = GetLeaderboardSuccessful;

  @Implements<StopAction>()
  const factory GetLeaderboard.error(
    Object error,
    StackTrace stackTrace, {
    @Default(_kGetLeaderboardPendingId) String pendingId,
  }) = GetLeaderboardError;

  static String get pendingKey => _kGetLeaderboardPendingId;
}
