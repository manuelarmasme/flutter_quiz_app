import 'package:adv_basics/questions_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/start_screen.dart';


class Quiz extends StatefulWidget {
  //constructor
  const Quiz({super.key});

  //this is married with _QuizState
  @override
  State<Quiz> createState(){
    return _QuizState();
  }

}

// -------------------------------------
//   Using tenaring condiction example
// -------------------------------------

class _QuizState extends State<Quiz>{

  //initial value is the start creen
  //we are using tenaring condiction to don't use init state
  var activeScreen = 'start-screen';

  //function that changes the staten when the buttons clicks
  void switchScreen () {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {

    //using this widget variable we could use another aproach
    //and have a more redable code

    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = const QuestionsScreen();
    }

    return  MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 112, 13, 177),
                Color.fromARGB(255, 71, 5, 106),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )
          ),
          child: screenWidget
        ),
      )
    );
  }
}

// -------------------------------------
//          Init State example
// -------------------------------------


// class _QuizState extends State<Quiz>{

//   //Widget in this case is more flexible than var, to recivied another kind of variable
//   //? this questions marks tells flutter that the variable could be a widget or null
//   Widget? activeScreen;

//   //method provide by state class
//   //init states is perfect for general initialization variables, and happends one time
//   //we should'nt use set state in this case because init states acts before build methos runs anyway
//   //And at this point we are not executing set state at this point
//   @override
//   void initState() {
//     // TODO: implement initState
//     activeScreen = StartScreen(switchScreen);

//     //this allow flutter to add this first initilialization
//     super.initState();
//   }

//   //function that changes the staten when the buttons clicks
//   void switchScreen () {
//     setState(() {
//       activeScreen = const QuestionsScreen();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return     MaterialApp(
//       home: Scaffold(
//         body: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               colors: [
//                 Color.fromARGB(255, 33, 1, 55),
//                 Color.fromARGB(255, 53, 4, 80),
//               ],
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//             )
//           ),
//           child: activeScreen
//         ),
//       )
//     );
//   }
// }