import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../actions/index.dart';
import '../models/index.dart';
import 'home_page.dart';
import 'leaderboard.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  static const String name = 'game_page';

  @override
  Widget build(BuildContext context) {
    final Size mediaQ = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: mediaQ.height / 7),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Text(
                            'The',
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontSize: ResponsiveBreakpoints.of(context).largerOrEqualTo(TABLET) ? 128 : 72,
                                height: 1,
                                letterSpacing: 6,
                                fontWeight: FontWeight.bold,
                                foreground: Paint()
                                  ..style = PaintingStyle.stroke
                                  ..strokeWidth = 12
                                  ..color = Colors.black,
                              ),
                            ),
                          ),
                          Text(
                            'The',
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontSize: ResponsiveBreakpoints.of(context).largerOrEqualTo(TABLET) ? 128 : 72,
                                height: 1,
                                letterSpacing: 6,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue[900],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: <Widget>[
                          Text(
                            'Hangman',
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontSize: ResponsiveBreakpoints.of(context).largerOrEqualTo(TABLET) ? 128 : 72,
                                letterSpacing: 6,
                                fontWeight: FontWeight.bold,
                                foreground: Paint()
                                  ..style = PaintingStyle.stroke
                                  ..strokeWidth = 12
                                  ..color = Colors.black,
                              ),
                            ),
                          ),
                          Text(
                            'Hangman',
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontSize: ResponsiveBreakpoints.of(context).largerOrEqualTo(TABLET) ? 128 : 72,
                                letterSpacing: 6,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFFE91E63),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      const SizedBox(height: 24),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          backgroundColor: const Color(0xFF9D27B0),
                          elevation: 0,
                          side: const BorderSide(width: 6),
                          fixedSize: ResponsiveBreakpoints.of(context).largerOrEqualTo(DESKTOP)
                              ? Size(mediaQ.width / 4, 100)
                              : ResponsiveBreakpoints.of(context).isTablet
                                  ? Size(mediaQ.width / 2, 100)
                                  : Size(mediaQ.width / 1.3, 80),
                        ),
                        child: Text(
                          'Start game',
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize: ResponsiveBreakpoints.of(context).largerOrEqualTo(TABLET) ? 36 : 24,
                              letterSpacing: 6,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFFFFE0B2),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      ElevatedButton(
                        onPressed: () {
                          StoreProvider.of<GameState>(context).dispatch(
                            const GetLeaderboard.start(),
                          );
                          Navigator.push(
                            context,
                            MaterialPageRoute<dynamic>(
                              builder: (BuildContext context) => const Leaderboard(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          backgroundColor: Colors.white,
                          elevation: 0,
                          side: const BorderSide(width: 6),
                          fixedSize: ResponsiveBreakpoints.of(context).largerOrEqualTo(DESKTOP)
                              ? Size(mediaQ.width / 4, 100)
                              : ResponsiveBreakpoints.of(context).isTablet
                                  ? Size(mediaQ.width / 2, 100)
                                  : Size(mediaQ.width / 1.3, 80),
                        ),
                        child: Text(
                          'Leaderboard',
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize: ResponsiveBreakpoints.of(context).largerOrEqualTo(TABLET) ? 36 : 24,
                              letterSpacing: 6,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      ElevatedButton(
                        onPressed: () {
                          StoreProvider.of<GameState>(context).dispatch(
                            const LogoutUser.start(),
                          );
                          Navigator.push(
                            context,
                            MaterialPageRoute<dynamic>(
                              builder: (BuildContext context) => const HomePage(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          backgroundColor: const Color(0xFF9D27B0),
                          elevation: 0,
                          side: const BorderSide(width: 6),
                          fixedSize: ResponsiveBreakpoints.of(context).largerOrEqualTo(DESKTOP)
                              ? Size(mediaQ.width / 4, 100)
                              : ResponsiveBreakpoints.of(context).isTablet
                                  ? Size(mediaQ.width / 2, 100)
                                  : Size(mediaQ.width / 1.3, 80),
                        ),
                        child: Text(
                          'Logout',
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize: ResponsiveBreakpoints.of(context).largerOrEqualTo(TABLET) ? 36 : 24,
                              letterSpacing: 6,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFFFFE0B2),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            if (ResponsiveBreakpoints.of(context).largerOrEqualTo(TABLET))
              Column(
                children: <Widget>[
                  Image.asset(
                    'assets/partial_rope.png',
                    scale: ResponsiveBreakpoints.of(context).smallerOrEqualTo(TABLET) ? 1.15 : 1,
                  ),
                  Transform.translate(
                    offset: const Offset(0, -32),
                    child: Image.asset(
                      'assets/hangman.png',
                      scale: ResponsiveBreakpoints.of(context).smallerOrEqualTo(TABLET) ? 1.15 : 1,
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
