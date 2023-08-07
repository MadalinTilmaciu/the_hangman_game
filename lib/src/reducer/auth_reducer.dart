import 'package:redux/redux.dart';

import '../actions/index.dart';
import '../models/index.dart';

Reducer<AuthState> authReducer = combineReducers(
  <Reducer<AuthState>>[
    TypedReducer<AuthState, InitializeAppSuccessful>(_intializeAppSuccessful).call,
  ],
);

AuthState _intializeAppSuccessful(AuthState state, InitializeAppSuccessful action) {
  return state.copyWith(user: action.user);
}
