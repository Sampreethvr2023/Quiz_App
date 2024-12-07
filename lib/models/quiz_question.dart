class QuizQuestion {
  QuizQuestion(this.text, this.answers);
  String text;
  List<String> answers;

  List<String> getShuffledAnswers() {
    final ShuffledAnswers;
    ShuffledAnswers = List.of(answers);
    ShuffledAnswers.shuffle();
    return ShuffledAnswers;
  }
}
