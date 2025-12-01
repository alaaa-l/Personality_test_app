import 'package:flutter/material.dart';
import 'package:personality_test_app/data/questions.dart';
import 'package:personality_test_app/models/answer.dart';
import 'package:personality_test_app/screens/question_screen.dart';
import 'package:personality_test_app/screens/result_screen.dart';
import 'package:personality_test_app/screens/start_screen.dart';

class PersonalityTestApp extends StatefulWidget {
  const PersonalityTestApp({super.key});

  @override
  State<PersonalityTestApp> createState() => _PersonalityTestAppState();
}

class _PersonalityTestAppState extends State<PersonalityTestApp> {
  Widget? activeScreen;
  String activeScreenName = "start-screen";
  int currentIndex = 0;
  String currentQuestion = questions[0].questionText;
  Personality dominantPersonality = Personality.feeler;
  Map<Personality, int> scores = {
    Personality.feeler: 0,
    Personality.thinker: 0,
    Personality.planner: 0,
    Personality.adventurer: 0,
  };
  void restart() {
    setState(() {
      scores = {
        Personality.feeler: 0,
        Personality.thinker: 0,
        Personality.planner: 0,
        Personality.adventurer: 0,
      };
      activeScreenName = 'start-screen';
      currentIndex = 0;
    });
  }

  void selectAnswer(Personality personlaity) {
    if (currentIndex < 5) {
      setState(() {
        currentIndex++;
        currentQuestion = questions[currentIndex].questionText;
      });
    } else {
      setState(() {
        dominantPersonality = scores.entries.first.key;
        int highestScore = scores.entries.first.value;

        for (var entry in scores.entries) {
          if (entry.value > highestScore) {
            highestScore = entry.value;
            dominantPersonality = entry.key;
          }
        }

        activeScreenName = 'results-screen';
      });
    }
    setState(() {
      switch (personlaity) {
        case Personality.feeler:
          scores[Personality.feeler] = scores[Personality.feeler]! + 1;
          break;
        case Personality.planner:
          scores[Personality.planner] = scores[Personality.planner]! + 1;
          break;
        case Personality.thinker:
          scores[Personality.thinker] = scores[Personality.thinker]! + 1;
          break;
        case Personality.adventurer:
          scores[Personality.adventurer] = scores[Personality.adventurer]! + 1;
          break;
      }
    });
  }

  @override
  void initState() {
    activeScreen = StartScreen(startTest: selectStart);
    super.initState();
  }

  void selectStart() {
    setState(() {
      activeScreenName = "question-screen";
    });
  }

  @override
  Widget build(BuildContext context) {
    if (activeScreenName == "start-screen") {
      activeScreen = StartScreen(startTest: selectStart);
    } else if (activeScreenName == 'question-screen') {
      activeScreen = QuestionScreen(
        currentIndex: currentIndex,
        currentQuestion: currentQuestion,
        answers: questions[currentIndex].answers,
        selectAnwer: selectAnswer,
      );
    } else {
      activeScreen = ResultScreen(
        dominant: dominantPersonality,
        restart: restart,
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 14, 76, 124),
        body: activeScreen,
      ),
    );
  }
}
