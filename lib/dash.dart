import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/result.dart';

Questions quetion = Questions();

class Dash extends StatefulWidget {
  const Dash({super.key});

  @override
  State<Dash> createState() => _DashState();
}

List<Questions> questions = [
  Questions(q: 'Flutter transforms the entire app development process. Build, test, and deploy beautiful mobile, web, desktop, and embedded apps from a single codebase.', a: true),
  Questions(q: 'Flutter is a difficult language to learn', a: false),
  Questions(q: 'flutter can be done on android mobile and ios', a: true),
  Questions(q: 'The emulator works on iOS only', a: false),
  Questions(q: 'flutter is owned by google', a: true),
];

int questinIndex=0;
int trueAnswer=0;
int falseAnswer=0;

class _DashState extends State<Dash> {

  List <Widget> ScoreKeeper = [];
  void checkAnswer(bool ans) {

  bool correctAnswer = quetion.QuestionAnswer!;
  setState(() {

    if (ans == correctAnswer) {
      ScoreKeeper.add(Icon(Icons.check, color: Colors.green,));

    }
    else {
      ScoreKeeper.add(Icon(Icons.close, color: Colors.red,));
    }

  });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1A535C),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  questions[questinIndex].QuestionName!,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 28,
                      color: Colors.white, letterSpacing: 2, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 18, right: 18),
                    height: 65,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                      ),
                      onPressed: (){
                        final isCorrect = questions[questinIndex].QuestionAnswer;
                        setState(() {
                          if(questinIndex < questions.length-1)
                            questinIndex++;

                          else{
                            Navigator.push(context, MaterialPageRoute(builder: (_) =>
                                Results(answer: trueAnswer, falses: falseAnswer)));
                          }
                        });
                        if(isCorrect == true){
                          print('Waa Saxday');
                          setState(() {
                            ScoreKeeper.add(Icon(Icons.done, color: Colors.green,));
                            trueAnswer = trueAnswer + 1;
                          });
                        }else{
                          print('Waa Qaladay');
                          setState(() {
                            ScoreKeeper.add(Icon(Icons.close, color: Colors.red,));
                            falseAnswer = falseAnswer + 1;
                          });
                        }
                      },
                      child: Text('True', style: TextStyle(color: Colors.white,
                        fontSize: 24,),),
                    ),
                  ),
                ),
              ],
            ),),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 18, right: 18,bottom: 22),
                    height: 65,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                      ),
                      onPressed: (){
                        final isFalse = questions[questinIndex].QuestionAnswer;
                        setState(() {
                          if(questinIndex < questions.length-1)questinIndex++;
                          else{
                            Navigator.push(context, MaterialPageRoute(builder: (_) =>
                                Results(answer: trueAnswer, falses: falseAnswer)));
                          }
                        });
                        if(isFalse == false){
                          print('Waa Saxday');
                          setState(() {
                            ScoreKeeper.add(Icon(Icons.done, color: Colors.green,));
                            trueAnswer = trueAnswer + 1;
                          });
                        }else{
                          print('Waa Qaladay');
                          setState(() {
                            ScoreKeeper.add(Icon(Icons.close, color: Colors.red,));
                            falseAnswer = falseAnswer + 1;
                          });
                        }
                      },

                      child: Text('False', style: TextStyle(color: Colors.white,
                        fontSize: 24,),),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 30.0, bottom: 20),
            child: Row(
              children:
              ScoreKeeper
            ),
          )

        ],
      ),
    );
  }
}
