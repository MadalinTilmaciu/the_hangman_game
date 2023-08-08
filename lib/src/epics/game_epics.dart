import 'package:redux_epics/redux_epics.dart';

import '../models/index.dart';
import 'auth_epics.dart';
import 'leaderboard_epics.dart';
import 'words_epics.dart';

class GameEpics implements EpicClass<GameState> {
  GameEpics(
    this._auth,
    this._leaderboard,
    this._words,
  );

  final AuthEpics _auth;
  final LeaderboardEpics _leaderboard;
  final WordsEpics _words;

  @override
  Stream<dynamic> call(Stream<dynamic> actions, EpicStore<GameState> store) {
    return combineEpics(
      <Epic<GameState>>[
        _auth.call,
        _leaderboard.call,
        _words.call,
      ],
    )(actions, store);
  }
}
