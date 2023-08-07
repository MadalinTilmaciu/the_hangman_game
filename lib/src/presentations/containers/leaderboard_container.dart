part of 'index.dart';

class LeaderboardContainer extends StatelessWidget {
  const LeaderboardContainer({
    super.key,
    required this.builder,
  });

  final ViewModelBuilder<List<LeaderboardUser>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<GameState, List<LeaderboardUser>>(
      converter: (Store<GameState> store) => store.state.leaderboardList.leaderboardList,
      builder: builder,
    );
  }
}
