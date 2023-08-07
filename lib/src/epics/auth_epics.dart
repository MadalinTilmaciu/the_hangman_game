import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';

import '../actions/index.dart';
import '../data/auth_api.dart';
import '../models/index.dart';

class AuthEpics implements EpicClass<GameState> {
  AuthEpics(this._api);

  final AuthApi _api;

  @override
  Stream<dynamic> call(Stream<dynamic> actions, EpicStore<GameState> store) {
    return combineEpics(
      <Epic<GameState>>[
        TypedEpic<GameState, InitializeAppStart>(_initializeAppStart).call,
        TypedEpic<GameState, CreateUserStart>(_createUserStart).call,
        TypedEpic<GameState, LoginUserStart>(_loginUserStart).call,
        TypedEpic<GameState, LogoutUserStart>(_logoutUserStart).call,
      ],
    )(actions, store);
  }

  Stream<dynamic> _initializeAppStart(Stream<InitializeAppStart> actions, EpicStore<GameState> store) {
    return actions.flatMap(
      (InitializeAppStart action) {
        return Stream<void>.value(null).flatMap((_) => _api.currentUser()).startWith(null).pairwise().expand(
          (List<GameUser?> users) {
            return <dynamic>[
              InitializeApp.successful(users.last),
            ];
          },
        ).onErrorReturnWith((Object error, StackTrace stackTrace) => InitializeApp.error(error, stackTrace));
      },
    );
  }

  Stream<dynamic> _createUserStart(Stream<CreateUserStart> actions, EpicStore<GameState> store) {
    return actions.flatMap(
      (CreateUserStart action) {
        return Stream<void>.value(null)
            .asyncMap(
              (_) => _api.createUser(
                name: action.name,
                email: action.email,
                password: action.password,
              ),
            )
            .mapTo(const CreateUser.successful())
            .onErrorReturnWith((Object error, StackTrace stackTrace) => CreateUser.error(error, stackTrace));
      },
    );
  }

  Stream<dynamic> _loginUserStart(Stream<LoginUserStart> actions, EpicStore<GameState> store) {
    return actions.flatMap(
      (LoginUserStart action) {
        return Stream<void>.value(null)
            .asyncMap((_) => _api.loginUser(email: action.email, password: action.password))
            .mapTo(const LoginUser.successful())
            .onErrorReturnWith((Object error, StackTrace stackTrace) => LoginUser.error(error, stackTrace));
      },
    );
  }

  Stream<dynamic> _logoutUserStart(Stream<LogoutUserStart> actions, EpicStore<GameState> store) {
    return actions.flatMap(
      (LogoutUserStart action) {
        return Stream<void>.value(null)
            .asyncMap((_) => _api.logoutUser())
            .mapTo(const LogoutUser.successful())
            .onErrorReturnWith((Object error, StackTrace stackTrace) => LogoutUser.error(error, stackTrace));
      },
    );
  }
}
