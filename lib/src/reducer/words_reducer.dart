import 'package:redux/redux.dart';

import '../actions/index.dart';
import '../models/index.dart';

Reducer<WordState> wordsReducer = combineReducers(
  <Reducer<WordState>>[
    TypedReducer<WordState, GetRandomWordSuccessful>(_getRandomWordSuccessful).call,
  ],
);

WordState _getRandomWordSuccessful(WordState state, GetRandomWordSuccessful action) {
  return state.copyWith(word: action.word);
}
