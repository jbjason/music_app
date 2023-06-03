import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/constants/constant.dart';
import 'package:music_app/models/podcast.dart';
import 'package:music_app/widgets/details_widgets/d_appbar.dart';
import 'package:music_app/widgets/details_widgets/d_bottom_painter.dart';
import 'package:music_app/widgets/details_widgets/d_image_container.dart';
import 'package:music_app/widgets/details_widgets/d_play_buttons.dart';

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
                // appbar
                const DAppBar(),
                const SizedBox(height: 20),
                // img
                DImageCoainter(size: size, podCast: podCast),
                const SizedBox(height: 20),
                // title
                Text(
                  podCast.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: textColor,
                    fontSize: 20,
                  ),
                ),
                // author
                Text(
                  podCast.singer,
                  style: const TextStyle(color: textSecondary, fontSize: 10),
                ),
                const SizedBox(height: 10),
                // wave img
                Image.asset(
                  'assets/images/wave1.png',
                  height: size.height * .1,
                  width: size.width,
                  fit: BoxFit.fitWidth,
                ),
                const SizedBox(height: 10),
                const DPlayButtons()
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
