import 'package:flutter/material.dart';
import 'package:music_app/constants/constant.dart';

class DBottomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final h = size.height, w = size.width;
    final paint = Paint()..color = iconBack1;
    final path = Path();

    path.moveTo(w * .35, h);
    path.cubicTo(w * .4, h, w * .5, -(h * 1), w * .7, h);
    path.lineTo(w, h);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
