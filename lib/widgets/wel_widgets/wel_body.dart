import 'package:flutter/material.dart';
import 'package:music_app/widgets/wel_widgets/wel_login_button.dart';

class WelBody extends StatelessWidget {
  const WelBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'me.',
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
          getSubHeader('Share'),
          getSubHeader('Your'),
          getSubHeader('Music'),
          getSubtitle('Stream your music & create'),
          getSubtitle('a unique connection'),
          getSubtitle('between you and'),
          getSubtitle('your fans.'),
          const Spacer(),
          // signin button
          const WelLogInButton(),
          const SizedBox(height: 7),
          Center(child: getSubtitle('Not yet a member ?')),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Text getSubHeader(String text) {
    final isTrue = text.contains("Share");
    return Text(
      text,
      style: TextStyle(
        fontSize: isTrue ? 60 : 70,
        fontWeight: FontWeight.w900,
        color: isTrue ? Colors.pink : Colors.white,
        fontFamily: 'Script',
      ),
    );
  }

  Text getSubtitle(String text) => Text(
        text,
        style: const TextStyle(
          fontSize: 14,
          fontFamily: 'Vinque',
          color: Colors.white,
        ),
      );
}
