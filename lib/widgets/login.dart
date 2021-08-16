import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class LoginPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, 0);
    path_0.lineTo(size.width, 0);
    path_0.cubicTo(
      size.width,
      0,
      size.width * 1.013889,
      size.height * 1.457045,
      size.width,
      size.height * 0.8487973,
    );
    path_0.cubicTo(
      size.width * 0.9861111,
      size.height * 0.2405498,
      0,
      size.height * 0.8487973,
      0,
      size.height * 0.8487973,
    );
    path_0.lineTo(0, 0);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.5030861, 0),
        Offset(size.width * 0.5030861, size.height * 0.9972784),
        [Color(0xff3E072E).withOpacity(0.81), Color(0xff7D17FF).withOpacity(1)],
        [0.00312487, 0.711458]);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
