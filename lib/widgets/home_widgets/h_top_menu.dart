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
  late Animation<double> _myAnimation;
  late AnimationController _controller;
  bool isSelect = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );
    _myAnimation = CurvedAnimation(curve: Curves.linear, parent: _controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 700),
      left: 40,
      right: 40,
      top: isSelect ? 50 : -255,
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
        child: CustomPaint(
          painter: HMenuPainter(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                const SizedBox(height: 25),
                const Text('Home', style: TextStyle(color: backColor)),
                const Divider(color: Colors.black12),
                const Text('Category', style: TextStyle(color: textSecondary)),
                const Divider(color: Colors.black12),
                const Text('Playlist', style: TextStyle(color: textSecondary)),
                const Divider(color: Colors.black12),
                const Text('Profile', style: TextStyle(color: textSecondary)),
                const Divider(color: Colors.black12),
                const SizedBox(height: 20),
                // 4 social app icons
                const Row(
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
                const SizedBox(height: 40),
                // Menu & close button
                InkWell(
                  onTap: () {
                    setState(() => isSelect = !isSelect);
                    isSelect ? _controller.forward() : _controller.reverse();
                  },
                  child: AnimatedIcon(
                    progress: _myAnimation,
                    icon: AnimatedIcons.menu_close,
                    color: backColor,
                  ),
                ),
                const SizedBox(height: 10),
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
    path.lineTo(w * .73, h);
    path.cubicTo(w * .83, h * .99, w * .72, h * .86, w * .85, h * .84);
    path.cubicTo(w * .93, h * .84, w, h * .83, w, h * .7);
    path.lineTo(w, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
