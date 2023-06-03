import 'package:flutter/material.dart';
import 'package:music_app/screens/home_screen.dart';

class WelLogInButton extends StatelessWidget {
  const WelLogInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => const HomeScreen()));
      },
      child: Align(
        alignment: Alignment.center,
        child: Container(
          width: 200,
          height: 60,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white24,
            border: Border.all(color: Colors.white30),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(width: 10),
              const Icon(Icons.lock_outline, color: Colors.white),
              const Text('Sign in', style: TextStyle(color: Colors.white)),
              Container(
                padding: const EdgeInsets.all(13),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 2,
                      color: Colors.white30,
                      blurRadius: 20,
                    )
                  ],
                ),
                child: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.deepPurple,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
