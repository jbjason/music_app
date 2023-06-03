import 'package:flutter/material.dart';
import 'package:music_app/constants/constant.dart';

Container getIcon(IconData icon) => Container(
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(shape: BoxShape.circle, color: iconBack1),
      child: Icon(icon, color: iconColor),
    );
