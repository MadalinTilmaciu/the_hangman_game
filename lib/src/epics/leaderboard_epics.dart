import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';

import '../actions/index.dart';
import '../data/leaderboard_api.dart';
import '../models/index.dart';

class LeaderboardEpics implements EpicClass<GameState> {
  LeaderboardEpics(this._api);

  final LeaderboardApi _api;

  @override
  Stream<dynamic> call(Stream<dynamic> actions, EpicStore<GameState> store) {
    return combineEpics(
      <Epic<GameState>>[
        TypedEpic<GameState, GetLeaderboardStart>(_getLeaderboardStart).call,
        TypedEpic<GameState, UpdateUserScoreStart>(_updateUserScoreStart).call,
      ],
    )(actions, store);
  }

  Stream<dynamic> _getLeaderboardStart(Stream<GetLeaderboardStart> actions, EpicStore<GameState> store) {
    return actions.flatMap(
      (GetLeaderboardStart action) {
        return Stream<void>.value(null)
            .asyncMap((_) => _api.getLeaderboard())
            .map((List<LeaderboardUser> leaderboardList) => GetLeaderboard.successful(leaderboardList))
            .onErrorReturnWith((Object error, StackTrace stackTrace) => GetLeaderboard.error(error, stackTrace));
      },
    );
  }

  Stream<dynamic> _updateUserScoreStart(Stream<UpdateUserScoreStart> actions, EpicStore<GameState> store) {
    return actions.flatMap(
      (UpdateUserScoreStart action) {
        return Stream<void>.value(null)
            .asyncMap((_) => _api.updateUserScore(action.uid, action.score))
            .mapTo(const UpdateUserScore.successful())
            .onErrorReturnWith((Object error, StackTrace stackTrace) => UpdateUserScore.error(error, stackTrace));
      },
    );
  }
}
