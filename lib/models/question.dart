class Question {
  String? questionTitle;
  String? imageUrl;
  List<String>? answerList;
  int? correctAnswer;
  Question({
    this.questionTitle,
    this.imageUrl,
    this.answerList,
    this.correctAnswer,
  });
}

List<Question> questionList = [
  Question(
    questionTitle: 'مشهور ترین شعبده‌باز جهان کیست؟',
    imageUrl: '1',
    answerList: ['امیراحمدادیبی', 'دیوید کاپرفیلد', 'هری هودینی', 'دیوید بلین'],
    correctAnswer: 2,
  ),
  Question(
    questionTitle: 'چه کشوری ایستگاه فضایی میر را بنا کرد؟',
    imageUrl: '2',
    answerList: ['(شوروی سابق)روسیه', 'آمریکا', 'چین', 'هند'],
    correctAnswer: 0,
  ),
];
