import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/constants/constant.dart';
import 'package:music_app/constants/constant_get.dart';
import 'package:music_app/models/podcast.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.podCast});
  final PodCast podCast;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const DAppBar(),
                const SizedBox(height: 20),
                DImageCoainter(size: size, podCast: podCast),
                const SizedBox(height: 20),
                Text(
                  podCast.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: textColor,
                    fontSize: 20,
                  ),
                ),
                Text(
                  podCast.singer,
                  style: const TextStyle(color: textSecondary, fontSize: 10),
                ),
                const SizedBox(height: 10),
                Image.asset(
                  'assets/images/wave1.png',
                  height: size.height * .1,
                  width: size.width,
                  fit: BoxFit.fitWidth,
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(Icons.repeat, color: iconColor),
                    const Icon(Icons.skip_previous, color: secondaryColor),
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                        color: secondaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.pause_outlined),
                    ),
                    const Icon(Icons.skip_next, color: secondaryColor),
                    const Icon(CupertinoIcons.shuffle, color: iconColor),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: kBottomNavigationBarHeight * 1.2,
        child: CustomPaint(painter: DBottomPainter()),
      ),
    );
  }
}

class DBottomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final h = size.height, w = size.width;
    final paint = Paint()..color = iconBack1;
    final path = Path();

    path.moveTo(w * .35, h);
    path.cubicTo(w * .4, h, w * .5, -(h * 1), w * .65, h);
    path.lineTo(w, h);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class DAppBar extends StatelessWidget {
  const DAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: getIcon(Icons.arrow_back_ios_new),
        ),
        const Text(
          'Now playing',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
        getIcon(Icons.more_horiz),
      ],
    );
  }
}

class DImageCoainter extends StatelessWidget {
  const DImageCoainter({
    super.key,
    required this.size,
    required this.podCast,
  });

  final Size size;
  final PodCast podCast;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * .45,
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        image:
            DecorationImage(image: AssetImage(podCast.img), fit: BoxFit.cover),
      ),
      child: UnconstrainedBox(
        child: Container(
          margin: const EdgeInsets.only(bottom: 10),
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.black87,
            borderRadius: BorderRadius.circular(40),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.favorite_border_outlined, color: iconColor),
              SizedBox(width: 20),
              Icon(Icons.download_outlined, color: iconColor),
            ],
          ),
        ),
      ),
    );
  }
}
