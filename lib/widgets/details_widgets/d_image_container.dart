import 'package:flutter/material.dart';
import 'package:music_app/constants/constant.dart';
import 'package:music_app/models/podcast.dart';

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
