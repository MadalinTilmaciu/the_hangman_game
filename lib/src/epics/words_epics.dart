import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';

import '../actions/index.dart';
import '../data/words_api.dart';
import '../models/index.dart';

class WordsEpics implements EpicClass<GameState> {
  WordsEpics(this._api);

  final WordsApi _api;

  @override
  Stream<dynamic> call(Stream<dynamic> actions, EpicStore<GameState> store) {
    return combineEpics(
      <Epic<GameState>>[
        TypedEpic<GameState, GetRandomWordStart>(_getRandomWordStart).call,
      ],
    )(actions, store);
  }

  Stream<dynamic> _getRandomWordStart(Stream<GetRandomWordStart> actions, EpicStore<GameState> store) {
    return actions.flatMap(
      (GetRandomWordStart action) {
        return Stream<void>.value(null)
            .asyncMap((_) => _api.getRandomWord())
            .map((Word word) => GetRandomWord.successful(word))
            .onErrorReturnWith((Object error, StackTrace stackTrace) => GetRandomWord.error(error, stackTrace));
      },
    );
  }
}
