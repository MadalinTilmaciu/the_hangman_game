part of 'index.dart';

class CurrentRankContainer extends StatelessWidget {
  const CurrentRankContainer({
    super.key,
    required this.builder,
  });

  final ViewModelBuilder<int?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<GameState, int?>(
      converter: (Store<GameState> store) => store.state.leaderboard.rank,
      builder: builder,
    );
  }
}
