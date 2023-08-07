part of '../index.dart';

@freezed
class LeaderboardUser with _$LeaderboardUser {
  const factory LeaderboardUser({
    required String uid,
    required String name,
    required int score,
  }) = _LeaderboardUser;

  factory LeaderboardUser.fromJson(Map<String, dynamic> json) =>
      _$LeaderboardUserFromJson(Map<String, dynamic>.from(json));
}
