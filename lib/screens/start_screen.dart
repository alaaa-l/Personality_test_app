import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({required this.startTest, super.key});
  final void Function() startTest;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            child: Text(
              "Discover Your Personality Type!",
              textAlign: TextAlign.center,

              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("💖  🗺️", style: TextStyle(fontSize: 38))],
          ),
          SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("🗓️  🧠", style: TextStyle(fontSize: 38))],
          ),
          SizedBox(height: 32),
          ElevatedButton(
            onPressed: startTest,
            style: ElevatedButton.styleFrom(
              fixedSize: Size(127, 37),
              backgroundColor: Colors.white,
              foregroundColor: const Color.fromARGB(255, 109, 46, 186),
            ),
            child: Text(
              "Start Test",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
