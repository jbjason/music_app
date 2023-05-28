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
          Positioned.fill(
            child: Image.asset(
              'assets/images/home1.png',
              colorBlendMode: BlendMode.colorBurn,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: size.height * .4,
            left: -size.height * .15,
            height: size.height * .4,
            width: size.height * .35,
            child: ClipPath(
              clipper: Clipppp(),
              child: Container(color: Colors.amber),
            ),
          ),
          Positioned(
            bottom: -size.height * .1,
            right: -size.height * .1,
            height: size.height * .2,
            width: size.height * .2,
            child: CustomPaint(
              painter: WelCircle1Painter(),
              child: Image.asset('assets/images/cover2.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'me.',
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  'Share',
                  style: TextStyle(
                    fontSize: 34,
                    fontStyle: FontStyle.italic,
                    color: Colors.pink,
                  ),
                ),
                getSubHeader('Your'),
                getSubHeader('Music'),
                const SizedBox(height: 25),
                getSubtitle('Stream your'),
                getSubtitle('music & create'),
                getSubtitle('a unique'),
                getSubtitle('connection'),
                getSubtitle('between you and'),
                getSubtitle('your fans'),
                const Spacer(),
                const WelLogInButton(),
                const SizedBox(height: 7),
                Center(child: getSubtitle('Not yet a member ?')),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Text getSubHeader(String text) => Text(
        text,
        style: const TextStyle(
          fontSize: 34,
          fontWeight: FontWeight.w900,
          color: Colors.white,
        ),
      );

  Text getSubtitle(String text) => Text(
        text,
        style: const TextStyle(
          fontSize: 10,
          color: Colors.white,
        ),
      );
}

class Clipppp extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final h = size.height, w = size.width;
    final path = Path();
    final rect =
        Rect.fromCenter(center: Offset(w / 2, h / 2), width: w, height: h);
    path.addArc(rect, 0, 360);

    // final rect2 = Rect.fromCenter(
    //     center: Offset(w / 2, h / 2), width: w / 2, height: h / 2);

    // path.addArc(rect2, math.radians(0), math.radians(360));
    // path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => false;
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
