part of '../index.dart';

@freezed
class LeaderboardState with _$LeaderboardState {
  const factory LeaderboardState({
    @Default(<LeaderboardUser>[]) List<LeaderboardUser> leaderboardList,
  }) = _LeaderboardState;

  factory LeaderboardState.fromJson(Map<String, dynamic> json) =>
      _$LeaderboardStateFromJson(Map<String, dynamic>.from(json));
}
