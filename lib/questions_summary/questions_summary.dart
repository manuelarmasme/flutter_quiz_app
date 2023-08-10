import 'package:flutter/material.dart';
import 'package:adv_basics/questions_summary/summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  //we need to recevied the data

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        //every row represents one summaryData piece
        //map() allows us to convert summaryData List into a list of wigdets for children Widget
        //toList helps to convert the iterrable object return form map into a list
        child: Column(
          children: summaryData.map(
            (data) {
              return SummaryItem(data);
            },
          ).toList(),
        ),
      ),
    );
  }
}
