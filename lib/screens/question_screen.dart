import 'package:flutter/material.dart';
import 'package:personality_test_app/data/questions.dart';
import 'package:personality_test_app/models/answer.dart';
import 'package:personality_test_app/widgets/answer_button.dart';

class QuestionScreen extends StatelessWidget {
  QuestionScreen({
    required this.currentIndex,
    required this.answers,
    required this.currentQuestion,
    required this.selectAnwer,
    super.key,
  });
  void Function(Personality personality) selectAnwer;
  String currentQuestion;
  List<Answer> answers;
  int currentIndex;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              child: Text(
                currentQuestion,
                textAlign: TextAlign.center,

                style: TextStyle(color: Colors.white, fontSize: 27),
              ),
            ),
            SizedBox(height: 18),
            AnswerButton(answer: answers[0], select: selectAnwer),
            SizedBox(height: 7),
            AnswerButton(answer: answers[1], select: selectAnwer),
            SizedBox(height: 7),
            AnswerButton(answer: answers[2], select: selectAnwer),
            SizedBox(height: 7),
            AnswerButton(answer: answers[3], select: selectAnwer),
          ],
        ),
      ),
    );
  }
}
