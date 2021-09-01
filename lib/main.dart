import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purpleAccent,
        appBar: AppBar(
          title: Center(child: Text('Magic 8 Ball')),
          backgroundColor: Colors.deepPurple,
        ),
        body: MagicBall(),
      ),
    ),
  );
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {

  int update = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: TextButton(
            child: Image.asset('images/ball$update.png'),
            onPressed: (){
              setState(() {
                update = Random().nextInt(5)+1;
              });},
          ),
        ),
      ],
    );
  }
}