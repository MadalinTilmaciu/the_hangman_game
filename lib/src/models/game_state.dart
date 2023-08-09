part of 'index.dart';

@freezed
class GameState with _$GameState {
  const factory GameState({
    @Default(AuthState()) AuthState auth,
    @Default(LeaderboardState()) LeaderboardState leaderboard,
    @Default(WordState()) WordState word,
    @Default(<String>{}) Set<String> pendingActions,
  }) = _GameState;

  factory GameState.fromJson(Map<String, dynamic> json) => _$GameStateFromJson(Map<String, dynamic>.from(json));
}
