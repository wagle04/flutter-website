import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawLogo extends CustomPainter {
  Paint _paint;

  DrawLogo({double strokeWidth}) {
    _paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;
  }
  @override
  void paint(Canvas canvas, Size size) {
    var height = size.height;
    var width = size.width;

    var path = Path();
    path.moveTo(width * 0.665, height * 0.667);
    path.lineTo(width * 0.5, height);
    path.lineTo(width * 0.25, 0);
    path.lineTo(0, height * 0.667);
    path.lineTo(width * 0.415, height * 0.667);
    //path.close();

    var path2 = Path();
    path2.moveTo(width * 0.335, height * 0.333);
    path2.lineTo(width * 0.5, 0);
    path2.lineTo(width * 0.75, height);
    path2.lineTo(width, height * 0.333);
    path2.lineTo(width * 0.585, height * 0.333);
    //path2.close();

    canvas.drawPath(path, _paint);
    canvas.drawPath(path2, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
