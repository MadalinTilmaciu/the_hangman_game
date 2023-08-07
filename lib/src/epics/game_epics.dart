import 'package:redux_epics/redux_epics.dart';

import '../models/index.dart';
import 'auth_epics.dart';

class GameEpics implements EpicClass<GameState> {
  GameEpics(
    this._auth,
  );

  final AuthEpics _auth;

  @override
  Stream<dynamic> call(Stream<dynamic> actions, EpicStore<GameState> store) {
    return combineEpics(
      <Epic<GameState>>[
        _auth.call,
      ],
    )(actions, store);
  }
}
