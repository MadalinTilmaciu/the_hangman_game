import 'package:redux/redux.dart';

import '../actions/index.dart';
import '../models/index.dart';

Reducer<LeaderboardState> leaderboardReducer = combineReducers(
  <Reducer<LeaderboardState>>[
    TypedReducer<LeaderboardState, GetLeaderboardSuccessful>(_getLeaderboardSuccessful).call,
    TypedReducer<LeaderboardState, GetCurrentRankSuccessful>(_getCurrentRankSuccessful).call,
  ],
);

LeaderboardState _getLeaderboardSuccessful(LeaderboardState state, GetLeaderboardSuccessful action) {
  return state.copyWith(leaderboardList: action.leaderboardList);
}

LeaderboardState _getCurrentRankSuccessful(LeaderboardState state, GetCurrentRankSuccessful action) {
  return state.copyWith(rank: action.rank);
}
