import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Greetings extends StatelessWidget {
  const Greetings({
    Key key,
    @required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          width: screenWidth < 500 ? screenWidth * 0.2 : screenWidth * 0.15,
          child: TypewriterAnimatedTextKit(
            isRepeatingAnimation: true,
            totalRepeatCount: 100,
            speed: Duration(milliseconds: 500),
            pause: Duration(seconds: 0),
            text: [
              "Hello,",
              "Hōla,",
              "नमस्ते,",
            ],
            textStyle: GoogleFonts.bioRhyme(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize:
                  screenWidth < 500 ? screenWidth * 0.05 : screenWidth * 0.039,
            ),
          ),
        ),
        Text(
          " I'm Manish Wagle !",
          style: GoogleFonts.bioRhyme(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: screenWidth * 0.039,
          ),
        ),
      ],
    );
  }
}
