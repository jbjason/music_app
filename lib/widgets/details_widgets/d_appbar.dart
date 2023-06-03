import 'package:flutter/material.dart';
import 'package:music_app/constants/constant.dart';
import 'package:music_app/constants/constant_get.dart';

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
