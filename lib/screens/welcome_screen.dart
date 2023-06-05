import 'package:flutter/material.dart';
import 'package:music_app/widgets/wel_widgets/wel_body.dart';
import 'package:music_app/widgets/wel_widgets/wel_circle_painter.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // back back cover
          Positioned.fill(
            child: Image.asset(
              'assets/images/cover4.jpg',
              colorBlendMode: BlendMode.colorBurn,
              fit: BoxFit.cover,
            ),
          ),
          // Middle yellow Circle
          Positioned(
            top: size.height * .45,
            left: -size.height * .18,
            height: size.height * .48,
            width: size.height * .43,
            child: Container(
              color: Colors.transparent,
              padding: const EdgeInsets.all(10),
              child: ClipPath(
                clipper: WelCircle1Clipper(),
                child: Container(
                  color: Colors.yellow[700],
                  child: Image.asset('assets/images/people2.jpg',
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          // bottom yellow circl
          Positioned(
            bottom: -size.height * .13,
            right: -size.height * .13,
            height: size.height * .3,
            width: size.height * .25,
            child: ClipPath(
              clipper: WelCircle2Clipper(),
              child: Container(
                color: Colors.yellow[700],
                child:
                    Image.asset('assets/images/people1.jpg', fit: BoxFit.cover),
              ),
            ),
          ),
          // texts & signin button
          const WelBody(),
        ],
      ),
    );
  }
}
