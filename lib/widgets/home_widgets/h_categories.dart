import 'package:flutter/material.dart';
import 'package:music_app/constants/constant.dart';

class HCategories extends StatelessWidget {
  const HCategories({super.key, required this.selected});
  final ValueNotifier selected;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
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
                  fontSize: 12,
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
