import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(
      {super.key, required this.isCorrectAnwser, required this.questionIndex});

  final int questionIndex;
  final bool isCorrectAnwser;

  @override
  Widget build(BuildContext context) {
    //we are adding 1 because we want to start with number one on the question tittle
    //as int tells dart that question_index is an int, without that dart doesn't know which kind of variable is question_index
    // Text widget only allows string values for that reason we have to conver with toString()
    final questionNumber = questionIndex + 1;

    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: isCorrectAnwser
              ? const Color.fromARGB(255, 19, 188, 118)
              : const Color.fromARGB(255, 255, 46, 46),
          borderRadius: BorderRadius.circular(100)),
      child: Text(
        questionNumber.toString(),
        style: const TextStyle(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
