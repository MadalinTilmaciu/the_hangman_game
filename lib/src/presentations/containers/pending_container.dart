part of 'index.dart';

class PendingContainer extends StatelessWidget {
  const PendingContainer({
    super.key,
    required this.builder,
  });

  final ViewModelBuilder<Set<String>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<GameState, Set<String>>(
      converter: (Store<GameState> store) => store.state.pendingActions,
      builder: builder,
    );
  }
}
