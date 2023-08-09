import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'create_account_page.dart';
import 'login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
              padding: EdgeInsets.symmetric(vertical: mediaQ.height / 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: ResponsiveBreakpoints.of(context).largerOrEqualTo(TABLET)
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      getTitleText(context, mediaQ, 'The', Colors.blue[900]!),
                      getTitleText(context, mediaQ, 'Hangman', const Color(0xFFE91E63)),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute<dynamic>(
                              builder: (BuildContext context) => CreateAccountPage(),
                            ),
                          );
                        },
                        style: getButtonStyle(const Color(0xFF9D27B0)),
                        child: Text(
                          'Create Account',
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
                      const SizedBox(height: 24),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute<dynamic>(
                              builder: (BuildContext context) => LoginPage(),
                            ),
                          );
                        },
                        style: getButtonStyle(Colors.white),
                        child: Text(
                          'Login',
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

  Stack getTitleText(BuildContext context, Size mediaQ, String title, Color color) {
    return Stack(
      children: <Widget>[
        Text(
          title,
          style: GoogleFonts.roboto(
            textStyle: TextStyle(
              fontSize:
                  ResponsiveBreakpoints.of(context).largerOrEqualTo(DESKTOP) ? mediaQ.width / 12 : mediaQ.width / 7,
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
              fontSize:
                  ResponsiveBreakpoints.of(context).largerOrEqualTo(DESKTOP) ? mediaQ.width / 12 : mediaQ.width / 7,
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
