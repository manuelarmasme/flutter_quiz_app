import 'package:flutter/material.dart';
import 'package:adv_basics/answer_button.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectedAnswer});

  final void Function(String answer) onSelectedAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  //define variable to store the index
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswers) {
    //to use onSelectedAnswer function we have to use widget.
    //we are recevieng selectedAnswers from quiz dart
    //we are going to have the value to display when de button do some action
    widget.onSelectedAnswer(selectedAnswers);

    //we have to set an state for increment the variable and affect the build method
    setState(() {
      currentQuestionIndex++; //we are adding 1
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity, //this use as much as there is width
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 235, 165, 255),
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map(
              (answer) {
                //using map we are creating one answer button with each answer that we have
                return AnswerButton(
                  answerText: answer,
                  onTap: () {
                    //we are calling answerQuestion to pass the answwer data
                    answerQuestion(answer);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
