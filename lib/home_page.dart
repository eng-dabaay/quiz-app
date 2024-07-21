import 'package:flutter/material.dart';
import 'package:quiz_app/dash.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.only(top: 210.0, left: 30, right: 30),
                child: Text('Welcome to Quiz App', style: TextStyle(fontSize: 50,
                    fontWeight: FontWeight.bold, color: Colors.white),
                textAlign: TextAlign.center,),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 50.0),
                child: Container(
                  height: 60,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      backgroundColor: Colors.black
                    ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => Dash()));
                      },
                      child: Text('Start', style: TextStyle(fontSize: 34,
                        fontWeight: FontWeight.bold, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
