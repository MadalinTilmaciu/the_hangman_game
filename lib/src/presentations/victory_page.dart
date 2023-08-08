import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'menu_page.dart';
import 'under_construction_page.dart';

class VictoryPage extends StatelessWidget {
  const VictoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size mediaQ = MediaQuery.of(context).size;

    ButtonStyle getButtonStyle(Color color) {
      return ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        backgroundColor: color,
        elevation: 0,
        side: const BorderSide(width: 6),
        fixedSize: ResponsiveBreakpoints.of(context).largerOrEqualTo(DESKTOP)
            ? Size(
                mediaQ.width / 3,
                ResponsiveBreakpoints.of(context).largerOrEqualTo(TABLET) ? mediaQ.height / 12 : mediaQ.height / 16,
              )
            : ResponsiveBreakpoints.of(context).isTablet
                ? Size(
                    mediaQ.width / 2,
                    ResponsiveBreakpoints.of(context).largerOrEqualTo(TABLET) ? mediaQ.height / 12 : mediaQ.height / 16,
                  )
                : Size(
                    mediaQ.width / 1.3,
                    ResponsiveBreakpoints.of(context).largerOrEqualTo(TABLET) ? mediaQ.height / 12 : mediaQ.height / 10,
                  ),
      );
    }

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
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      getTitleText(
                        context,
                        mediaQ,
                        'Victory',
                        Colors.blue[900]!,
                        ResponsiveBreakpoints.of(context).largerOrEqualTo(DESKTOP)
                            ? mediaQ.width / 12
                            : ResponsiveBreakpoints.of(context).isTablet
                                ? mediaQ.width / 10
                                : mediaQ.width / 6,
                      ),
                      SizedBox(height: mediaQ.height / 24),
                      getTitleText(
                        context,
                        mediaQ,
                        'Your score',
                        const Color(0xFFE91E63),
                        ResponsiveBreakpoints.of(context).largerOrEqualTo(DESKTOP)
                            ? mediaQ.width / 24
                            : ResponsiveBreakpoints.of(context).isTablet
                                ? mediaQ.width / 20
                                : mediaQ.width / 12,
                      ),
                      SizedBox(height: mediaQ.height / 24),
                      getTitleText(
                        context,
                        mediaQ,
                        '500',
                        const Color(0xFF9D27B0),
                        ResponsiveBreakpoints.of(context).largerOrEqualTo(DESKTOP)
                            ? mediaQ.width / 24
                            : ResponsiveBreakpoints.of(context).isTablet
                                ? mediaQ.width / 20
                                : mediaQ.width / 12,
                      ),
                    ],
                  ),
                  SizedBox(height: mediaQ.height / 24),
                  Column(
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute<dynamic>(
                              builder: (BuildContext context) => const UnderConstructionPage(),
                            ),
                          );
                        },
                        style: getButtonStyle(Colors.white),
                        child: Text(
                          'Play again',
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize: ResponsiveBreakpoints.of(context).largerOrEqualTo(TABLET) ? 36 : 24,
                              letterSpacing: 6,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute<dynamic>(
                              builder: (BuildContext context) => const MenuPage(),
                            ),
                          );
                        },
                        style: getButtonStyle(const Color(0xFF9D27B0)),
                        child: Text(
                          'Back to menu',
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize: ResponsiveBreakpoints.of(context).largerOrEqualTo(TABLET) ? 36 : 24,
                              letterSpacing: 6,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFFFFE0B2),
                              overflow: TextOverflow.ellipsis,
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

  Stack getTitleText(BuildContext context, Size mediaQ, String title, Color color, double fontSize) {
    return Stack(
      children: <Widget>[
        Text(
          title,
          style: GoogleFonts.roboto(
            textStyle: TextStyle(
              fontSize: fontSize,
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
          title,
          style: GoogleFonts.roboto(
            textStyle: TextStyle(
              fontSize: fontSize,
              height: 1,
              letterSpacing: 6,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
