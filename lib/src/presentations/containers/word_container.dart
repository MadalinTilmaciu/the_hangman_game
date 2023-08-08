part of 'index.dart';

class WordContainer extends StatelessWidget {
  const WordContainer({
    super.key,
    required this.builder,
  });

  final ViewModelBuilder<Word?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<GameState, Word?>(
      converter: (Store<GameState> store) => store.state.word.word,
      builder: builder,
    );
  }
}
