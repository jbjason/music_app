import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/constants/constant.dart';
import 'package:music_app/screens/details_screen.dart';
import 'package:music_app/widgets/home_widgets/h_podlist_item.dart';

class HPodList extends StatelessWidget {
  const HPodList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: podcasts.length,
      itemBuilder: (context, i) => GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => DetailsScreen(podCast: podcasts[i])),
          );
        },
        child: Container(
          height: 220,
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
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
                  child: const Icon(CupertinoIcons.play, color: iconColor),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: HPodListItem(item: podcasts[i]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
