import 'package:flutter/material.dart';
import 'package:personality_test_app/models/answer.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    required this.dominant,
    required this.restart,
    super.key,
  });
  final void Function() restart;
  final Personality dominant;

  @override
  Widget build(BuildContext context) {
    Map<Personality, String> messages = {
      Personality.feeler:
          "You are a Feeler 💖 Empathetic, warm, and guided by emotion.",
      Personality.thinker:
          "You are a Thinker 🧠 Logical, curious, and focused on ideas.",
      Personality.planner:
          "You are a Planner 🗓️ Organized, strategic, and goal-oriented.",
      Personality.adventurer:
          "You are an Adventurer 🗺️ Spontaneous, bold, and always exploring.",
    };
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Text(
            messages[dominant]!,
            textAlign: TextAlign.center,

            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),

          SizedBox(height: 32),
          ElevatedButton(
            onPressed: restart,
            style: ElevatedButton.styleFrom(
              fixedSize: Size(127, 37),
              backgroundColor: Colors.white,
              foregroundColor: const Color.fromARGB(255, 109, 46, 186),
            ),
            child: Text(
              "Restart Test",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
