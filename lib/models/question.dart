import 'package:personality_test_app/models/answer.dart';

class Question {
  Question(this.questionText, this.answers);
  String questionText;
  List<Answer> answers;
}
