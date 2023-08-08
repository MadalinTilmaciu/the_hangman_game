part of 'index.dart';

class LetterPositions extends StatelessWidget {
  const LetterPositions({
    super.key,
    required this.builder,
  });

  final ViewModelBuilder<List<int>?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<GameState, List<int>?>(
      converter: (Store<GameState> store) => store.state.word.letterPositions,
      builder: builder,
    );
  }
}
