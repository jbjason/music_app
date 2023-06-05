import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:music_app/constants/constant.dart';
import 'package:music_app/models/podcast.dart';

class HPodListItem extends StatelessWidget {
  const HPodListItem({super.key, required this.item});
  final PodCast item;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(bottom: Radius.circular(22)),
      child: Stack(
        children: [
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
            child: Container(),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: backColor),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(.2),
                  Colors.black.withOpacity(.07),
                  Colors.black.withOpacity(.008),
                ],
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        item.title,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: textColor,
                          fontFamily: 'Casab',
                        ),
                      ),
                      Text(
                        item.singer,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: textSecondary,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                const Icon(Icons.favorite_border_outlined, color: iconColor),
                const SizedBox(width: 20),
                const Icon(Icons.download_outlined, color: iconColor),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
