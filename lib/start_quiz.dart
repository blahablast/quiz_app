import 'package:flutter/material.dart';

class StartQuiz extends StatelessWidget {
  const StartQuiz(this.startTheQuiz, {super.key});

  final void Function() startTheQuiz;

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: Colors.white70,
        ),
        const SizedBox(
          height: 50,
        ),
        const Text(
          'Learn Flutter the fun way!',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        const SizedBox(
          height: 50,
        ),
        OutlinedButton.icon(
          onPressed: startTheQuiz,
          style: OutlinedButton.styleFrom(
              backgroundColor: const Color(0xFF7328B6),
              foregroundColor: Colors.white70),
          label: const Text('Start Quiz'),
          icon: const Icon(Icons.arrow_right_alt),
        ),
      ],
    );
  }
}
