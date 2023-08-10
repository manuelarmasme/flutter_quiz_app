import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/questions_summary/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  //this variable helps to pass the row info
  //we're passing a map not a list because in questions summary we are passing map()
  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    // on this variable we are comparing the value to checkout if it right
    final isCorrectAnwser = itemData['user_answer'] == itemData['correct_answer'];


    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
            isCorrectAnwser: isCorrectAnwser,
            questionIndex: (itemData['question_index'] as int)
          ),
          const SizedBox(
            width: 20,
          ),
          //expanded helps up to restrinct the answers to the with of the row in this case the with of the screen
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  (itemData['question'] as String),
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  (itemData['user_answer'] as String),
                  style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 218, 145, 233),
                    fontSize: 16,
                  ),
                ),
                Text(
                  (itemData['correct_answer'] as String),
                  style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 142, 198, 236),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
