import 'package:flutter/material.dart';

//we're using Stateless because in this screen we're not going to manipulate the state
class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, //this use as much as there is width
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('You have answer x questions of y correctly!'),
              const SizedBox(height: 30,),
              const Text('List of answers and questions'),
              const SizedBox(height: 30,),
              TextButton(
                onPressed: () {},
                child: const Text('Restart Quiz'),
              )
            ],
          ),
      ),
    );
  }
}
