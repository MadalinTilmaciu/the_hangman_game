import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../actions/index.dart';
import '../models/index.dart';
import 'containers/index.dart';

class GameboardPage extends StatelessWidget {
  const GameboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size mediaQ = MediaQuery.of(context).size;

    // ButtonStyle getButtonStyle(Color color) {
    //   return ElevatedButton.styleFrom(
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(12),
    //     ),
    //     backgroundColor: color,
    //     elevation: 0,
    //     side: const BorderSide(width: 6),
    //     fixedSize: ResponsiveBreakpoints.of(context).largerOrEqualTo(DESKTOP)
    //         ? Size(
    //             mediaQ.width / 3,
    //             ResponsiveBreakpoints.of(context).largerOrEqualTo(TABLET) ? mediaQ.height / 12 : mediaQ.height / 16,
    //           )
    //         : ResponsiveBreakpoints.of(context).isTablet
    //            ? Size(
    //                 mediaQ.width / 2,
    //                 ResponsiveBreakpoints.of(context).largerOrEqualTo(TABLET) ? mediaQ.height / 12 : mediaQ.height / 16,
    //               )
    //             : Size(
    //                 mediaQ.width / 1.3,
    //                 ResponsiveBreakpoints.of(context).largerOrEqualTo(TABLET) ? mediaQ.height / 12 : mediaQ.height / 10,
    //               ),
    //   );
    // }

    return SafeArea(
      child: Scaffold(
        body: PendingContainer(
          builder: (BuildContext context, Set<String> pending) {
            return WordContainer(
              builder: (BuildContext context, Word? word) {
                if (pending.contains(GetRandomWord.pendingKey)) {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: Color(0xFFE91E63),
                      strokeWidth: 8,
                    ),
                  );
                }

                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: mediaQ.height / 24),
                      child: Column(
                        mainAxisAlignment: ResponsiveBreakpoints.of(context).largerOrEqualTo(TABLET)
                            ? MainAxisAlignment.spaceBetween
                            : MainAxisAlignment.center,
                        crossAxisAlignment: ResponsiveBreakpoints.of(context).largerOrEqualTo(TABLET)
                            ? CrossAxisAlignment.start
                            : CrossAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              getTitleText(context, mediaQ, 'The ', Colors.blue[900]!),
                              getTitleText(context, mediaQ, 'Hangman', const Color(0xFFE91E63)),
                            ],
                          ),
                          SizedBox(height: mediaQ.height / 24),
                          ResponsiveRowColumn(
                            layout: ResponsiveBreakpoints.of(context).largerOrEqualTo(TABLET)
                                ? ResponsiveRowColumnType.ROW
                                : ResponsiveRowColumnType.COLUMN,
                            rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                            columnMainAxisAlignment: MainAxisAlignment.center,
                            children: <ResponsiveRowColumnItem>[
                              ResponsiveRowColumnItem(
                                child: Image.asset(
                                  'assets/union.png',
                                  scale: ResponsiveBreakpoints.of(context).largerThan(TABLET)
                                      ? 1.6
                                      : ResponsiveBreakpoints.of(context).isTablet
                                          ? 1.75
                                          : 5,
                                ),
                              ),
                              if (ResponsiveBreakpoints.of(context).smallerThan(TABLET))
                                ResponsiveRowColumnItem(
                                  child: Transform.translate(
                                    offset: const Offset(0, -8),
                                    child: SizedBox(
                                      width: mediaQ.width / 2.5,
                                      child: const Divider(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ResponsiveRowColumnItem(
                                child: ResponsiveBreakpoints.of(context).smallerThan(TABLET)
                                    ? SizedBox(height: mediaQ.height / 24)
                                    : SizedBox(width: mediaQ.width / 10),
                              ),
                              ResponsiveRowColumnItem(
                                child: SizedBox(
                                  width: mediaQ.width / 2,
                                  child: GridView.builder(
                                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 4,
                                      mainAxisSpacing: 4,
                                    ),
                                    shrinkWrap: true,
                                    itemCount: word!.word.length,
                                    itemBuilder: (BuildContext context, int index) {
                                      return Container(
                                        width: 120,
                                        height: 10,
                                        margin: const EdgeInsets.all(4),
                                        alignment: Alignment.center,
                                        decoration: const BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(width: 3),
                                          ),
                                          color: Colors.red,
                                        ),
                                        child: const Text(
                                          '',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            );
          },
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
                  ResponsiveBreakpoints.of(context).largerOrEqualTo(DESKTOP) ? mediaQ.width / 24 : mediaQ.width / 16,
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
                  ResponsiveBreakpoints.of(context).largerOrEqualTo(DESKTOP) ? mediaQ.width / 24 : mediaQ.width / 16,
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
