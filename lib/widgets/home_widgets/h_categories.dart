import 'package:flutter/material.dart';
import 'package:music_app/constants/constant.dart';

class HCategories extends StatelessWidget {
  const HCategories({super.key, required this.selected});
  final ValueNotifier selected;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      clipBehavior: Clip.none,
      child: Row(
        children: List.generate(
          categories.length,
          (i) => InkWell(
            onTap: () => selected.value = i,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              margin: const EdgeInsets.only(right: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: selected.value == i ? secondaryColor : iconBack1,
              ),
              child: Text(
                categories[i],
                style: TextStyle(
                  fontSize: selected.value == i ? 12 : 10,
                  fontWeight:
                      selected.value == i ? FontWeight.bold : FontWeight.normal,
                  color: selected.value == i ? backColor : textColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
