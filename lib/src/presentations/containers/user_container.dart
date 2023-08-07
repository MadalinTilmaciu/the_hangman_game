part of 'index.dart';

class UserContainer extends StatelessWidget {
  const UserContainer({
    super.key,
    required this.builder,
  });

  final ViewModelBuilder<GameUser?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<GameState, GameUser?>(
      converter: (Store<GameState> store) => store.state.auth.user,
      builder: builder,
    );
  }
}
