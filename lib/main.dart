import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'firebase_options.dart';
import 'src/actions/index.dart';
import 'src/data/auth_api.dart';
import 'src/data/leaderboard_api.dart';
import 'src/data/words_api.dart';
import 'src/epics/auth_epics.dart';
import 'src/epics/game_epics.dart';
import 'src/epics/leaderboard_epics.dart';
import 'src/epics/words_epics.dart';
import 'src/models/index.dart';
import 'src/presentations/containers/index.dart';
import 'src/presentations/create_account_page.dart';
import 'src/presentations/game_over_page.dart';
import 'src/presentations/gameboard_page.dart';
import 'src/presentations/home_page.dart';
import 'src/presentations/leaderboard.dart';
import 'src/presentations/login_page.dart';
import 'src/presentations/menu_page.dart';
import 'src/presentations/under_construction_page.dart';
import 'src/presentations/victory_page.dart';
import 'src/presentations/widgets/no_transition_builder.dart';
import 'src/reducer/reducer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  SystemChrome.setPreferredOrientations(<DeviceOrientation>[DeviceOrientation.portraitUp]);

  final AuthApi authApi = AuthApi(FirebaseAuth.instance);
  final AuthEpics auth = AuthEpics(authApi);

  final LeaderboardApi leaderboardApi = LeaderboardApi(FirebaseFirestore.instance);
  final LeaderboardEpics leaderboard = LeaderboardEpics(leaderboardApi);

  final Client client = Client();
  final WordsApi wordsApi = WordsApi(client);
  final WordsEpics wordsEpics = WordsEpics(wordsApi);

  final GameEpics epic = GameEpics(
    auth,
    leaderboard,
    wordsEpics,
  );

  final Store<GameState> store = Store<GameState>(
    reducer,
    initialState: const GameState(),
    middleware: <Middleware<GameState>>[
      EpicMiddleware<GameState>(epic.call).call,
    ],
  );

  store.dispatch(const InitializeApp.start());

  runApp(
    Directionality(
      textDirection: TextDirection.rtl,
      child: TheHangman(
        store: store,
      ),
    ),
  );
}

class TheHangman extends StatelessWidget {
  const TheHangman({
    super.key,
    required this.store,
  });

  final Store<GameState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<GameState>(
      store: store,
      child: MaterialApp(
        title: 'The Hangman Game',
        theme: ThemeData(
          pageTransitionsTheme: PageTransitionsTheme(
            builders: kIsWeb
                ? <TargetPlatform, PageTransitionsBuilder>{
                    for (final TargetPlatform platform in TargetPlatform.values) platform: const NoTransitionsBuilder(),
                  }
                : const <TargetPlatform, PageTransitionsBuilder>{
                    TargetPlatform.android: ZoomPageTransitionsBuilder(),
                    TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
                  },
          ),
        ),
        builder: (BuildContext context, Widget? child) => ResponsiveBreakpoints.builder(
          child: child!,
          breakpoints: <Breakpoint>[
            const Breakpoint(start: 0, end: 640, name: MOBILE),
            const Breakpoint(start: 641, end: 1023, name: TABLET),
            const Breakpoint(start: 1024, end: 1920, name: DESKTOP),
            const Breakpoint(start: 1921, end: 3840, name: '4K'),
          ],
        ),
        onGenerateRoute: (RouteSettings settings) {
          return MaterialPageRoute<dynamic>(
            builder: (BuildContext context) {
              return MaxWidthBox(
                maxWidth: 3840,
                background: Container(color: const Color(0xFFF5F5F5)),
                child: ResponsiveScaledBox(
                  width: ResponsiveValue<double>(
                    context,
                    conditionalValues: <Condition<double>>[
                      Condition<double>.equals(name: MOBILE, value: 450),
                      Condition<double>.equals(name: TABLET, value: 1023),
                      Condition<double>.equals(name: DESKTOP, value: 1920),
                      Condition<double>.largerThan(name: '4k', value: 1921),
                    ],
                  ).value,
                  child: BouncingScrollWrapper.builder(
                    context,
                    buildPage(settings.name ?? ''),
                  ),
                ),
              );
            },
          );
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }

  Widget buildPage(String name) {
    switch (name) {
      case '/':
        return UserContainer(
          builder: (BuildContext context, GameUser? user) {
            if (user == null) {
              return const HomePage();
            } else {
              return const MenuPage();
            }
          },
        );
      case CreateAccountPage.route:
        return CreateAccountPage();
      case LoginPage.route:
        return LoginPage();
      case LeaderboardPage.route:
        return const LeaderboardPage();
      case UnderConstructionPage.route:
        return const UnderConstructionPage();
      case GameboardPage.route:
        return const GameboardPage();
      case VictoryPage.route:
        return const VictoryPage();
      case GameOverPage.route:
        return const GameOverPage();
      default:
        return const SizedBox.shrink();
    }
  }
}
