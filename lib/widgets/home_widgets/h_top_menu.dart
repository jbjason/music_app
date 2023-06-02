import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/constants/constant.dart';

class HTopMenu extends StatefulWidget {
  const HTopMenu({super.key});

  @override
  State<HTopMenu> createState() => _HTopMenuState();
}

class _HTopMenuState extends State<HTopMenu>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 1000),
      left: 40,
      right: 40,
      top: 50,
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
        child: CustomPaint(
          painter: HMenuPainter(),
          child: const Padding(
            padding: EdgeInsets.all(25),
            child: Column(
              children: [
                Text('Home', style: TextStyle(color: backColor)),
                Divider(color: Colors.black12),
                Text('Category', style: TextStyle(color: textSecondary)),
                Divider(color: Colors.black12),
                Text('Playlist', style: TextStyle(color: textSecondary)),
                Divider(color: Colors.black12),
                Text('Profile', style: TextStyle(color: textSecondary)),
                Divider(color: Colors.black12),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.camera_alt_outlined, color: iconBack2),
                    SizedBox(width: 10),
                    Icon(CupertinoIcons.play, color: iconBack2),
                    SizedBox(width: 10),
                    Icon(Icons.facebook, color: iconBack2),
                    SizedBox(width: 10),
                    Icon(Icons.audiotrack_outlined, color: iconBack2),
                  ],
                ),
                SizedBox(height: 40),
                Icon(Icons.close, color: backColor)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HMenuPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final h = size.height, w = size.width;
    final paint = Paint()..color = secondaryColor;
    final path = Path();
    path.lineTo(0, h * .7);
    path.cubicTo(0, h * .87, w * .2, h * .85, w * .15, h * .85);
    path.cubicTo(w * .25, h * .85, w * .1, h, w * .3, h);
    path.lineTo(w * .76, h);
    path.cubicTo(w * .82, h, w * .79, h * .86, w * .85, h * .86);
    path.cubicTo(w * .9, h * .85, w, h * .85, w, h * .7);
    path.lineTo(w, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
