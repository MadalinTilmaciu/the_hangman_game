import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';

import '../actions/index.dart';
import '../models/index.dart';
import 'auth_reducer.dart';

Reducer<GameState> reducer = combineReducers(
  <Reducer<GameState>>[
    TypedReducer<GameState, StartAction>(_startAction).call,
    TypedReducer<GameState, StopAction>(_stopAction).call,
    _reducer,
  ],
);

GameState _reducer(GameState state, dynamic action) {
  if (kDebugMode) {
    print(action);
  }

  if (action is LogoutUserSuccessful) {
    return const GameState();
  }

  return state.copyWith(
    auth: authReducer(state.auth, action),
  );
}

GameState _startAction(GameState state, StartAction action) {
  return state.copyWith(pendingActions: <String>{...state.pendingActions, action.pendingId});
}

GameState _stopAction(GameState state, StopAction action) {
  return state.copyWith(pendingActions: <String>{...state.pendingActions}..remove(action.pendingId));
}
