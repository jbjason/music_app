import 'package:flutter/material.dart';
import 'package:music_app/constants/constant.dart';
import 'package:music_app/widgets/home_widgets/h_categories.dart';
import 'package:music_app/widgets/home_widgets/h_podlist.dart';
import 'package:music_app/widgets/home_widgets/h_search_bar.dart';
import 'package:music_app/widgets/home_widgets/h_top_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedCat = ValueNotifier<int>(0);
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  const Text(
                    'Discover',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      letterSpacing: 1.3,
                      color: textColor,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  const Text(
                    'Enjoy your favorite podcast',
                    style: TextStyle(
                      fontSize: 10,
                      color: textSecondary,
                      letterSpacing: 1.2,
                    ),
                  ),
                  const SizedBox(height: 20),
                  // searchField & notification icon
                  const HSearchBar(),
                  const SizedBox(height: 20),
                  // category list
                  HCategories(selected: selectedCat),
                  const SizedBox(height: 30),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Trending Podcasts',
                        style: TextStyle(
                          fontSize: 20,
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                      Text(
                        'View all',
                        style: TextStyle(fontSize: 10, color: textSecondary),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // podcast List
                  const Expanded(child: HPodList())
                ],
              ),
            ),
            const HTopMenu(),
          ],
        ),
      ),
    );
  }
}
