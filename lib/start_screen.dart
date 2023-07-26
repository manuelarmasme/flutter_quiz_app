import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {

  const StartScreen(this.startQuiz, {super.key});

  //If i want to use the function startQuiz
  //I have to declare with a final variable and also use this on the constructor

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/quiz-logo.png',
                  width: 300,
                  color: const Color.fromARGB(80, 255, 255, 255),
                ),
                const SizedBox(
                  height: 80,
                ),
                Text(
                  'Learn Flutter for the fun way!',
                  style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 196, 132, 255),
                    fontSize: 24,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                OutlinedButton.icon(
                  onPressed: startQuiz, //this is a pointer to the variable. This variable is a function. The required variable to onPressed
                  style: OutlinedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 196, 132, 255)
                  ),
                  icon: const Icon(Icons.arrow_forward_sharp),
                  label: const Text(
                    'Start Quiz',
                  )
                )
              ],
            ),
        );
  }
}

