import 'package:flutter/material.dart';
import 'package:music_app/widgets/wel_widgets/wel_login_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // back back cover
          Positioned.fill(
            child: Image.asset(
              'assets/images/cover3.jpg',
              colorBlendMode: BlendMode.colorBurn,
              fit: BoxFit.cover,
            ),
          ),
          // Middle yellow Circle
          Positioned(
            top: size.height * .4,
            left: size.height * -.15,
            height: size.height * .4,
            width: size.height * .35,
            child: Container(
              color: Colors.transparent,
              padding: const EdgeInsets.all(10),
              child: CustomPaint(foregroundPainter: WelCircle1Painter()),
            ),
          ),
          // bottom yellow circl
          Positioned(
            bottom: -size.height * .1,
            right: -size.height * .08,
            height: size.height * .2,
            width: size.height * .2,
            child: CustomPaint(painter: WelCircle1Painter()),
          ),
          // texts & signin button
          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'me.',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
                getSubHeader('Share'),
                getSubHeader('Your'),
                getSubHeader('Music'),
                getSubtitle('Stream your music & create'),
                getSubtitle('a unique connection'),
                getSubtitle('between you and'),
                getSubtitle('your fans.'),
                const Spacer(),
                // signin button
                const WelLogInButton(),
                const SizedBox(height: 7),
                Center(child: getSubtitle('Not yet a member ?')),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Text getSubHeader(String text) => Text(
        text,
        style: TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.w900,
          color: text.contains("Share") ? Colors.pink : Colors.white,
          letterSpacing: 1.3,
        ),
      );

  Text getSubtitle(String text) => Text(
        text,
        style: const TextStyle(
          fontSize: 14,
          letterSpacing: 1.3,
          color: Colors.white,
        ),
      );
}

class WelCircle1Painter extends CustomPainter {
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
