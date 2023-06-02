import 'package:flutter/material.dart';
import 'package:music_app/constants/constant.dart';

class HPodCastList extends StatelessWidget {
  const HPodCastList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: podcasts.length,
      itemBuilder: (context, i) => Container(
        height: 220,
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
              image: AssetImage(podcasts[i].img), fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            Center(
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: iconBack1,
                ),
                child: const Icon(Icons.play_arrow_outlined, color: iconColor),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                color: Colors.black38,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            podcasts[i].title,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: textColor,
                            ),
                          ),
                          Text(
                            podcasts[i].singer,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: textSecondary),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    const Icon(Icons.favorite_border_outlined,
                        color: iconColor),
                    const SizedBox(width: 20),
                    const Icon(Icons.download_outlined, color: iconColor),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
