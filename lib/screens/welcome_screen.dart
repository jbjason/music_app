import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:music_app/widgets/wel_widgets/wel_login_button.dart';
import 'dart:ui' as ui show Image;

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
            left: size.height * .15,
            height: size.height * .4,
            width: size.height * .35,
            child: FutureBuilder(
              future: getImageFileFromAssets(),
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.waiting:
                    return const Text('Image loading...');
                  default:
                    if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}');
                    } else {
                      return Container(
                        color: Colors.red,
                        padding: const EdgeInsets.all(10),
                        child: CustomPaint(
                          foregroundPainter:
                              WelCircle1Painter(img: snapshot.data!),
                          // child: Container(
                          //   color: Colors.teal,
                          //   padding: const EdgeInsets.all(30),
                          // ),
                        ),
                      );
                    }
                }
              },
            ),
          ),
          Positioned(
            bottom: -size.height * .1,
            right: -size.height * .1,
            height: size.height * .2,
            width: size.height * .2,
            // child: CustomPaint(
            //   painter: const WelCircle1Painter(),
            child: Image.asset('assets/images/cover2.png'),
            // ),
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

class WelCircle1Painter extends CustomPainter {
  final ui.Image img;
  const WelCircle1Painter({required this.img});
  @override
  void paint(Canvas canvas, Size size) {
    final h = size.height, w = size.width;
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 40
      ..color = Colors.yellow[700]!;
    canvas.drawImage(img, Offset(w / 2, h / 2), paint);
    canvas.drawCircle(Offset(w / 2, h / 2), 80, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

Future<ui.Image> getImageFileFromAssets() async {
  // final byteData = await rootBundle.load('assets/images/profile1.png');
  // final file = File('${(await getTemporaryDirectory()).path}/profile1.png');
  // await file.create(recursive: true);
  // await file.writeAsBytes(byteData.buffer
  //     .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));
  final ByteData bytes = await rootBundle.load('assets/images/profile1.png');
  final Uint8List file = bytes.buffer.asUint8List();
  final image = await decodeImageFromList(file);
  return image;
}
