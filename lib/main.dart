import 'package:flutter/material.dart';
import 'package:quiz_app/home_page.dart';



void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Quiz()));
}

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}


class _QuizState extends State<Quiz> {


  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

