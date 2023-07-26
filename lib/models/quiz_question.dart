class QuizQuestion {

  //constructor

  const QuizQuestion(this.text, this.answers);

  //variables

  final String text;
  final List<String> answers;

  //function that return type list
  List<String> getShuffledAnswers(){

    //List.of create a copy of answer, this will help us
    //with shuffle method, because shuffle method change the original list
    final shuffledList = List.of(answers);

    shuffledList.shuffle();

    return shuffledList;
  }
}