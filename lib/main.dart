import 'package:flutter/material.dart';
import 'package:personality_test_app/personality_test_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return PersonalityTestApp();
  }
}
