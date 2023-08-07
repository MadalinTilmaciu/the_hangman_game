// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:redux_epics/redux_epics.dart';

import '../models/index.dart';
import 'auth_epics.dart';
import 'leaderboard_epics.dart';

class GameEpics implements EpicClass<GameState> {
  GameEpics(
    this._auth,
    this._leaderboard,
  );

  final AuthEpics _auth;
  final LeaderboardEpics _leaderboard;

  @override
  Stream<dynamic> call(Stream<dynamic> actions, EpicStore<GameState> store) {
    return combineEpics(
      <Epic<GameState>>[
        _auth.call,
        _leaderboard.call,
      ],
    )(actions, store);
  }
}
