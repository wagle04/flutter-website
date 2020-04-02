import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/widgets/drawlogo.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key key,
    @required this.screenWidth,
    @required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            left: screenWidth * 0.03,
            top: screenWidth * 0.013,
          ),
          child: GestureDetector(
            onTap: () {
              html.window.open("https://flutter.dev/", "Flutter Website");
            },
            child: Container(
              height: screenHeight * 0.123,
              width: screenWidth * 0.15625,
              child: Align(
                child: Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Text(
                    "Built using",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                  ),
                ),
                alignment: Alignment.bottomRight,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(screenWidth * 0.0065 * 2),
                image: DecorationImage(
                  image: AssetImage("assets/images/flutter.png"),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            right: screenWidth * 0.03,
            top: screenWidth * 0.013,
          ),
          child: Container(
//                        color: Colors.black,
            child: CustomPaint(
              size: Size(screenWidth * 0.09, screenHeight * 0.123),
              painter: DrawLogo(strokeWidth: 3),
            ),
          ),
        ),
      ],
    );
  }
}
