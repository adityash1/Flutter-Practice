import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({int soundNumber, Color color}) {
    return Expanded(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(soundNumber: 1, color: Colors.redAccent),
              buildKey(soundNumber: 2, color: Colors.orangeAccent),
              buildKey(soundNumber: 3, color: Colors.greenAccent),
              buildKey(soundNumber: 4, color: Colors.lightBlueAccent),
              buildKey(soundNumber: 5, color: Colors.purpleAccent),
              buildKey(soundNumber: 6, color: Colors.lightGreenAccent),
              buildKey(soundNumber: 7, color: Colors.pinkAccent),
            ],
          ),
        ),
      ),
    );
  }
}
