import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  const Results({super.key, required this.answer, required this.falses});

  final int answer;
  final int falses;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1A535C),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Result Quiz', style: TextStyle(fontSize: 24, color: Colors.white),),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Text('Quiz Result Is ', style: TextStyle(fontSize: 40,
                  fontWeight: FontWeight.bold, color: Colors.white),),
            ),
            Text('True Answer : $answer', style: TextStyle(fontSize: 34,
                fontWeight: FontWeight.bold,color: Colors.green),),
            SizedBox(height: 12,),
            Container(
              child: Text('False Answer : $falses', style: TextStyle(fontSize: 34,
                  fontWeight: FontWeight.bold,color: Colors.red),),
            ),
          ],
        ),
      ),
    );
  }
}
