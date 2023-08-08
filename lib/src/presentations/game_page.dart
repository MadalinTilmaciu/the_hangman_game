import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

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
              padding: EdgeInsets.symmetric(vertical: mediaQ.height / 6),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: ResponsiveBreakpoints.of(context).largerOrEqualTo(TABLET)
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Text(
                            'Under',
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontSize: ResponsiveBreakpoints.of(context).largerOrEqualTo(DESKTOP)
                                    ? mediaQ.width / 12
                                    : ResponsiveBreakpoints.of(context).isTablet
                                        ? mediaQ.width / 11
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
                            'Under',
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontSize: ResponsiveBreakpoints.of(context).largerOrEqualTo(DESKTOP)
                                    ? mediaQ.width / 12
                                    : ResponsiveBreakpoints.of(context).isTablet
                                        ? mediaQ.width / 11
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
                      Stack(
                        children: <Widget>[
                          Text(
                            'Construction',
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontSize: ResponsiveBreakpoints.of(context).largerOrEqualTo(DESKTOP)
                                    ? mediaQ.width / 12
                                    : ResponsiveBreakpoints.of(context).isTablet
                                        ? mediaQ.width / 11
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
                            'Construction',
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontSize: ResponsiveBreakpoints.of(context).largerOrEqualTo(DESKTOP)
                                    ? mediaQ.width / 12
                                    : ResponsiveBreakpoints.of(context).isTablet
                                        ? mediaQ.width / 11
                                        : mediaQ.width / 8,
                                height: 1,
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
