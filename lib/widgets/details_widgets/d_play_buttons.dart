import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/constants/constant.dart';

class DPlayButtons extends StatelessWidget {
  const DPlayButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
