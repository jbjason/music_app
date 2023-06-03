import 'package:flutter/material.dart';
import 'package:music_app/constants/constant.dart';
import 'package:music_app/constants/constant_get.dart';

class HSearchBar extends StatelessWidget {
  const HSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 53,
            decoration: BoxDecoration(
              gradient: bodyGradient,
              borderRadius: BorderRadius.circular(22),
              boxShadow: boxShadow,
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: controller,
                    autofocus: false,
                    textInputAction: TextInputAction.search,
                    textCapitalization: TextCapitalization.words,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      border: InputBorder.none,
                      hintText: 'Search......',
                      hintStyle: TextStyle(
                        fontSize: 12,
                        color: textSecondary,
                        letterSpacing: 1.3,
                        wordSpacing: 1.5,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 1.2,
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white12,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.all(4.5),
                  width: 40,
                  padding: const EdgeInsets.all(6),
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(11),
                      topRight: Radius.circular(50),
                      bottomLeft: Radius.circular(11),
                      bottomRight: Radius.circular(11),
                    ),
                  ),
                  child: Image.asset(
                    'assets/icons/settings.png',
                    color: iconColor,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 15),
        getIcon(Icons.notifications_outlined),
      ],
    );
  }
}
