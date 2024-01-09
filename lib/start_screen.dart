import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            color: Colors.white54,
            'assets/images/quiz-logo.png',
            width: 300,
          ),
          const SizedBox(
            height: 80,
          ),
          Text(
            'Learn flutter the fun way!',
            style: GoogleFonts.lato(color: Colors.white70, fontSize: 24),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(
                foregroundColor: Colors.cyanAccent),
            icon: const Icon(Icons.arrow_circle_right_outlined),
            label: const Text(
              'Start Quiz',
              style: TextStyle(
                color: Colors.cyan,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
