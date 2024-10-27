class QuizModel {
  const QuizModel(this.title, this.questions);
   final String title;
   final List<String> questions;
    List<String> questionsShuffle() {
    final listData = List.of(questions);
      listData.shuffle();
      return listData;
   }
} 