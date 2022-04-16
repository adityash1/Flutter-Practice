import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.blue[900],
            title: Center(
              child: Text(
                'Ask Me Anything',
              ),
            ),
          ),
          body: AskMeAnything(),
        ),
      ),
    );

class AskMeAnything extends StatefulWidget {
  @override
  _AskMeAnythingState createState() => _AskMeAnythingState();
}

class _AskMeAnythingState extends State<AskMeAnything> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              child: Image.asset(
                'images/ball$ballNumber.png',
              ),
              onPressed: () {
                setState(
                  () {
                    ballNumber = Random().nextInt(4) + 1;
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
