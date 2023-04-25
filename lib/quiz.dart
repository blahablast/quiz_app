import 'package:flutter/material.dart';
import 'package:adv_basics/start_quiz.dart';
import 'package:adv_basics/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-quiz';
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen = StartQuiz(switchScreen);
  //   super.initState();
  // }

  // void switchScreen() {
  //   setState(() {
  //     activeScreen = const Questions();
  //   });
  // }

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-quiz';
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF380A5F), Color(0xFF7328B6)],
            ),
          ),
          child: Center(
            child: activeScreen == 'start-quiz'
                ? StartQuiz(switchScreen)
                : const QuestionsScreen(),
            // child: activeScreen,
          ),
        ),
      ),
    );
  }
}
