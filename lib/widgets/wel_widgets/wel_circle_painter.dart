import 'package:flutter/material.dart';

class WelCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final h = size.height, w = size.width;
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 40
      ..color = Colors.yellow[700]!;
    canvas.drawCircle(Offset(w / 2, h / 2), 80, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
