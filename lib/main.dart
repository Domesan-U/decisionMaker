import 'dart:math';
import 'package:flutter/material.dart';


void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text('Decision Maker'),
          backgroundColor: Colors.lightBlue,
        ),
        body: Decision(),
      ),
    ),
  );
}

class Decision extends StatefulWidget {
  const Decision({Key? key}) : super(key: key);

  @override
  State<Decision> createState() => _DecisionState();
}

class _DecisionState extends State<Decision> {
  int ball = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children:<Widget> [
            Expanded(
          child: TextButton(onPressed: (){
            setState((){
              ball = Random().nextInt(5)+1;
            });
          },
            child: Image.asset('images/ball$ball.png'),
      ),


          ),],
      )
    );
  }
}



