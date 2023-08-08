import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../models/index.dart';
import 'containers/index.dart';

class Leaderboard extends StatelessWidget {
  const Leaderboard({super.key});

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
                crossAxisAlignment: ResponsiveBreakpoints.of(context).largerOrEqualTo(TABLET)
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: ResponsiveBreakpoints.of(context).largerThan(MOBILE)
                        ? CrossAxisAlignment.start
                        : CrossAxisAlignment.center,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Text(
                            'Leaderboard',
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontSize: ResponsiveBreakpoints.of(context).largerOrEqualTo(DESKTOP)
                                    ? mediaQ.width / 12
                                    : ResponsiveBreakpoints.of(context).isTablet
                                        ? mediaQ.width / 9.5
                                        : mediaQ.width / 8,
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
                            'Leaderboard',
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontSize: ResponsiveBreakpoints.of(context).largerOrEqualTo(DESKTOP)
                                    ? mediaQ.width / 12
                                    : ResponsiveBreakpoints.of(context).isTablet
                                        ? mediaQ.width / 9.5
                                        : mediaQ.width / 8,
                                height: 1,
                                letterSpacing: 6,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue[900],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 64),
                      UserContainer(
                        builder: (BuildContext context, GameUser? user) {
                          return LeaderboardContainer(
                            builder: (BuildContext context, List<LeaderboardUser> leaderboard) {
                              return Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                                  border: Border.all(
                                    color: const Color(0xFF9D27B0),
                                    width: 10,
                                  ),
                                ),
                                height: mediaQ.height / 3.5,
                                width: ResponsiveBreakpoints.of(context).largerOrEqualTo(DESKTOP)
                                    ? mediaQ.width / 2
                                    : ResponsiveBreakpoints.of(context).isTablet
                                        ? mediaQ.width / 1.75
                                        : mediaQ.width / 1.15,
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: ListView.builder(
                                    itemCount: leaderboard.length,
                                    itemBuilder: (BuildContext context, int index) {
                                      return Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            '${index + 1}. ',
                                            style: GoogleFonts.roboto(
                                              textStyle: TextStyle(
                                                fontSize: ResponsiveBreakpoints.of(context).largerThan(TABLET)
                                                    ? 40
                                                    : ResponsiveBreakpoints.of(context).isTablet
                                                        ? 30
                                                        : 16,
                                                height: 1,
                                                letterSpacing: 6,
                                                fontWeight: FontWeight.bold,
                                                color: leaderboard[index].uid == user!.uid
                                                    ? const Color(0xFFE91E63)
                                                    : const Color(0xFF9D27B0),
                                              ),
                                            ),
                                          ),
                                          Transform.translate(
                                            offset: const Offset(-32, 0),
                                            child: SizedBox(
                                              width: ResponsiveBreakpoints.of(context).isMobile
                                                  ? mediaQ.width / 4
                                                  : mediaQ.width / 5,
                                              child: Text(
                                                leaderboard[index].name,
                                                style: GoogleFonts.roboto(
                                                  textStyle: TextStyle(
                                                    fontSize: ResponsiveBreakpoints.of(context).largerThan(TABLET)
                                                        ? 40
                                                        : ResponsiveBreakpoints.of(context).isTablet
                                                            ? 30
                                                            : 16,
                                                    height: 1,
                                                    letterSpacing: 6,
                                                    fontWeight: FontWeight.bold,
                                                    color: leaderboard[index].uid == user.uid
                                                        ? const Color(0xFFE91E63)
                                                        : const Color(0xFF9D27B0),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: ResponsiveBreakpoints.of(context).isMobile
                                                ? mediaQ.width / 5
                                                : mediaQ.width / 7,
                                            child: Text(
                                              leaderboard[index].score.toString(),
                                              style: GoogleFonts.roboto(
                                                textStyle: TextStyle(
                                                  fontSize: ResponsiveBreakpoints.of(context).largerThan(TABLET)
                                                      ? 40
                                                      : ResponsiveBreakpoints.of(context).isTablet
                                                          ? 30
                                                          : 16,
                                                  height: 1,
                                                  letterSpacing: 6,
                                                  fontWeight: FontWeight.bold,
                                                  color: leaderboard[index].uid == user.uid
                                                      ? const Color(0xFFE91E63)
                                                      : const Color(0xFF9D27B0),
                                                ),
                                              ),
                                              textAlign: TextAlign.right,
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                              );
                            },
                          );
                        },
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
                    scale: ResponsiveBreakpoints.of(context).smallerOrEqualTo(TABLET) ? 1.5 : 1.15,
                  ),
                  Transform.translate(
                    offset: const Offset(0, -32),
                    child: Image.asset(
                      'assets/hangman.png',
                      scale: ResponsiveBreakpoints.of(context).smallerOrEqualTo(TABLET) ? 1.5 : 1.15,
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
