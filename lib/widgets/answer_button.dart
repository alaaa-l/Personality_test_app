import 'package:flutter/material.dart';
import 'package:personality_test_app/models/answer.dart';

class AnswerButton extends StatelessWidget {
  AnswerButton({required this.answer, required this.select, super.key});
  void Function(Personality personality) select;
  Answer answer;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        select(answer.personalityType);
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        backgroundColor: Colors.white,
        foregroundColor: const Color.fromARGB(255, 109, 46, 186),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
      child: Text(
        answer.answerText,
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.w700),
      ),
    );
  }
}
