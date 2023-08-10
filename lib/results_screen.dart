import 'package:adv_basics/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/questions_summary/questions_summary.dart';
import 'package:google_fonts/google_fonts.dart';

//we're using Stateless because in this screen we're not going to manipulate the state
class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.chooseAnswer, required this.onRestart});

  final List<String> chooseAnswer; 
  final void Function() onRestart;

  //maps are collections of key/value pairs
  //values on map can be access(read or modified) via  [] => user ['age'] = 34
  //maps offer many built-in methods & properties => user.containsKey('age')

  List<Map<String, Object>> getSummaryData() {
    //Summary is  going to store all data results
    final List<Map<String, Object>> summary = [];

    //with this for we are adding to our map the summary data

    for (var i = 0; i < chooseAnswer.length; i++) {
      //important {} those brackets are use for adding a map
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chooseAnswer[i]
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    //we are calling this function because we have to return a list of answers
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;

    //where helps out to filter creanting a new list
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity, //this use as much as there is width
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You have answer $numCorrectQuestions questions out of $numTotalQuestions correctly!',
              style: GoogleFonts.lato(
                color: Color.fromARGB(255, 207, 158, 252),
                fontSize: 22,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            QuestionsSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: onRestart,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.refresh),
              label: const Text('Restart Quiz'),
            )
          ],
        ),
      ),
    );
  }
}
