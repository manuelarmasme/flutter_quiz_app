import 'package:flutter/material.dart';

//We use stateless because in this case we are not using any state
class AnswerButton extends StatelessWidget {
  // constructor

  const AnswerButton(
      {super.key, required this.answerText, required this.onTap});

  //button title
  final String answerText;

  //button function
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const  EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 10
        ),
        backgroundColor: const Color.fromARGB(255, 50, 0, 96),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40)
        ),
      ),
      onPressed: onTap,
      child: Text(answerText, textAlign: TextAlign.center,),
    );
  }
}
