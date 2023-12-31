import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../actions/index.dart';
import '../models/index.dart';
import 'containers/index.dart';

class GameboardPage extends StatelessWidget {
  const GameboardPage({super.key});

  static const String route = 'gameboard';

  @override
  Widget build(BuildContext context) {
    final Size mediaQ = MediaQuery.of(context).size;
    final List<String> alphabet = List<String>.generate(26, (int index) => String.fromCharCode(index + 65));
    String lastLetterChoice = '';
    List<int>? lastPositions = <int>[];
    final List<String> wordGuess = <String>[];

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
                return LetterPositionsContainer(
                  builder: (BuildContext context, List<int>? positions) {
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
                            mainAxisAlignment: ResponsiveBreakpoints.of(context).largerThan(TABLET)
                                ? MainAxisAlignment.spaceBetween
                                : MainAxisAlignment.center,
                            crossAxisAlignment: ResponsiveBreakpoints.of(context).largerThan(TABLET)
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
                                layout: ResponsiveBreakpoints.of(context).largerThan(TABLET)
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
                                              ? 3.5
                                              : 5,
                                    ),
                                  ),
                                  if (ResponsiveBreakpoints.of(context).smallerOrEqualTo(TABLET))
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
                                    child: ResponsiveBreakpoints.of(context).smallerOrEqualTo(TABLET)
                                        ? SizedBox(height: mediaQ.height / 32)
                                        : SizedBox(width: mediaQ.width / 8),
                                  ),
                                  ResponsiveRowColumnItem(
                                    child: SizedBox(
                                      width: ResponsiveBreakpoints.of(context).largerThan(TABLET)
                                          ? mediaQ.width / 2.5
                                          : mediaQ.width / 2,
                                      child: Column(
                                        children: <Widget>[
                                          UserContainer(
                                            builder: (BuildContext context, GameUser? user) {
                                              if (positions != null && lastPositions != positions) {
                                                for (int i = 0; i < positions.length; i++) {
                                                  while (wordGuess.length < positions[i]) {
                                                    wordGuess.add('');
                                                  }
                                                  if (positions[i] < wordGuess.length &&
                                                      wordGuess.elementAt(positions[i]) == '') {
                                                    wordGuess.replaceRange(
                                                      positions[i],
                                                      positions[i] + 1,
                                                      <String>[lastLetterChoice],
                                                    );
                                                  } else {
                                                    if (wordGuess.lastIndexOf(lastLetterChoice) != positions[i]) {
                                                      wordGuess.add(lastLetterChoice);
                                                    }
                                                  }
                                                }

                                                WidgetsBinding.instance.addPostFrameCallback(
                                                  (_) {
                                                    if (wordGuess.join() == word!.word.toUpperCase()) {
                                                      StoreProvider.of<GameState>(context).dispatch(
                                                        UpdateUserScore.start(
                                                          user!.uid,
                                                          500,
                                                        ),
                                                      );
                                                      Navigator.popAndPushNamed(
                                                        context,
                                                        'victory',
                                                      );
                                                    }
                                                  },
                                                );

                                                lastPositions = positions;
                                              }
                                              return GridView.builder(
                                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                                  crossAxisCount: word!.word.length > 12
                                                      ? word.word.length ~/ 1.5
                                                      : word.word.length,
                                                  mainAxisSpacing: 24,
                                                ),
                                                shrinkWrap: true,
                                                itemCount: word.word.length,
                                                itemBuilder: (BuildContext context, int index) {
                                                  return SizedBox(
                                                    width: 10,
                                                    height: 10,
                                                    child: Container(
                                                      margin: const EdgeInsets.all(4),
                                                      alignment: Alignment.center,
                                                      decoration: const BoxDecoration(
                                                        border: Border(
                                                          bottom: BorderSide(width: 3),
                                                        ),
                                                      ),
                                                      child: positions != null
                                                          ? Text(
                                                              wordGuess.length > index ? wordGuess[index] : '',
                                                              style: TextStyle(
                                                                fontSize: ResponsiveBreakpoints.of(context)
                                                                        .largerOrEqualTo(DESKTOP)
                                                                    ? 48
                                                                    : ResponsiveBreakpoints.of(context)
                                                                            .largerOrEqualTo(TABLET)
                                                                        ? 24
                                                                        : 16,
                                                                fontWeight: FontWeight.w600,
                                                                height: 1,
                                                              ),
                                                            )
                                                          : const Text(''),
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                          SizedBox(height: mediaQ.height / 16),
                                          SizedBox(
                                            width: ResponsiveBreakpoints.of(context).largerThan(TABLET)
                                                ? mediaQ.width / 2.5
                                                : mediaQ.width / 1.5,
                                            child: Column(
                                              children: <Widget>[
                                                GridView.builder(
                                                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount:
                                                        ResponsiveBreakpoints.of(context).largerOrEqualTo(TABLET)
                                                            ? 10
                                                            : 6,
                                                    mainAxisSpacing: 8,
                                                    crossAxisSpacing: 8,
                                                  ),
                                                  itemCount: alphabet.length,
                                                  shrinkWrap: true,
                                                  itemBuilder: (BuildContext context, int index) {
                                                    return SizedBox.expand(
                                                      child: ElevatedButton(
                                                        onPressed: () {
                                                          StoreProvider.of<GameState>(context).dispatch(
                                                            GetLetterPositions.start(
                                                              word!.word.toUpperCase(),
                                                              alphabet[index],
                                                            ),
                                                          );
                                                          lastLetterChoice = alphabet[index];
                                                        },
                                                        style: ElevatedButton.styleFrom(
                                                          backgroundColor: Colors.white,
                                                          elevation: 0,
                                                          side: const BorderSide(width: 2),
                                                          padding: EdgeInsets.zero,
                                                        ),
                                                        child: Text(
                                                          alphabet[index],
                                                          style: const TextStyle(
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.w600,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
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
