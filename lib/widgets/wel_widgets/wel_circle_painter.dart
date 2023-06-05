import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' as vect;

class WelCircle1Clipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final h = size.height, w = size.width;
    final path = Path();
    final h1 = size.height - 200, w1 = size.width - 200;
    final center = Offset(w / 2, h / 2);
    final rect1 = Rect.fromCenter(center: center, width: w1, height: h1);
    final rect2 = Rect.fromCenter(center: center, width: w, height: h);

    path.moveTo(w, h / 2);
    path.lineTo(w - 100, h / 2);
    path.addArc(rect1, vect.radians(0), vect.radians(360));
    path.lineTo(w, h * .5);
    path.addArc(rect2, vect.radians(0), vect.radians(-360));
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => false;
}

class WelCircle2Clipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final h = size.height, w = size.width;
    final path = Path();
    final h1 = size.height - 120, w1 = size.width - 120;
    final center = Offset(w / 2, h / 2);
    final rect1 = Rect.fromCenter(center: center, width: w1, height: h1);
    final rect2 = Rect.fromCenter(center: center, width: w, height: h);

    path.moveTo(w, h / 2);
    path.lineTo(w - 60, h / 2);
    path.addArc(rect1, vect.radians(0), vect.radians(360));
    path.lineTo(w, h * .5);
    path.addArc(rect2, vect.radians(0), vect.radians(-360));
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => false;
}
