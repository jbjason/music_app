import 'package:flutter/material.dart';
import 'package:music_app/constants/constant.dart';

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
              borderRadius: BorderRadius.circular(14),
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
                      hintText: 'Search',
                      hintStyle: TextStyle(
                        color: Color(0xFFE0E0E0),
                        fontSize: 14,
                        letterSpacing: 1.3,
                        wordSpacing: 1.5,
                      ),
                    ),
                  ),
                ),
                const VerticalDivider(color: Colors.white24),
                Container(
                  margin: const EdgeInsets.all(4.5),
                  width: 50,
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
                  child: Image.asset('assets/icons/settings.png',
                      color: iconColor),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 15),
        Container(
          padding: const EdgeInsets.all(15),
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: iconBack1),
          child: const Icon(Icons.notifications_outlined, color: iconColor),
        ),
      ],
    );
  }
}
