import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimatedTexts extends StatelessWidget {
  const AnimatedTexts({
    Key key,
    @required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RotateAnimatedTextKit(
          totalRepeatCount: 1000,
          isRepeatingAnimation: true,
          pause: Duration(milliseconds: 0),
          duration: Duration(milliseconds: 2500),
          text: [
            "Flutter  🚀",
            "Dart  🎯",
            "Python  🐍",
            "Andriod  ❤",
            "iOS  👀",
            "Nepal  🇳🇵",
            "Football  ⚽",
            "HP Pavilion 15  👨🏻‍💻",
            "OnePlus 7T  📱",
          ],
          textStyle: GoogleFonts.poppins(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: screenWidth * 0.039,
          ),
        ),
      ],
    );
  }
}
