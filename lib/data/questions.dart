import 'package:personality_test_app/models/answer.dart';
import 'package:personality_test_app/models/question.dart';

List<Question> questions = [
  Question('How do you approach a difficult decision?', [
    Answer('Analyze all options logically', Personality.thinker),
    Answer('Go with what feels right emotionally', Personality.feeler),
    Answer('Make a checklist and plan it out', Personality.planner),
    Answer('Take a leap and deal with results later', Personality.adventurer),
  ]),
  Question('What excites you the most?', [
    Answer('Solving complex problems', Personality.thinker),
    Answer('Connecting deeply with others', Personality.feeler),
    Answer('Creating a clear path to your goals', Personality.planner),
    Answer('Exploring something new', Personality.adventurer),
  ]),
  Question('Which best describes your work style?', [
    Answer('Detail-focused and logical', Personality.thinker),
    Answer('People-centered and intuitive', Personality.feeler),
    Answer('Organized and systematic', Personality.planner),
    Answer('Flexible and spontaneous', Personality.adventurer),
  ]),
  Question('How do you recharge after a long day?', [
    Answer('Quiet reflection or reading', Personality.thinker),
    Answer('Spending time with close friends', Personality.feeler),
    Answer("Planning tomorrow's tasks", Personality.planner),
    Answer('Doing something active or exciting', Personality.adventurer),
  ]),
  Question("You're most comfortable when...", [
    Answer('Things make logical sense', Personality.thinker),
    Answer('Everyone is getting along', Personality.feeler),
    Answer("There's a clear structure", Personality.planner),
    Answer("You're free to try new things", Personality.adventurer),
  ]),
  Question('Your biggest strength is...', [
    Answer('Thinking critically', Personality.thinker),
    Answer('Empathizing with others', Personality.feeler),
    Answer('Staying organized', Personality.planner),
    Answer('Being adventurous', Personality.adventurer),
  ]),
];
