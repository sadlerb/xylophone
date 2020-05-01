import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  Expanded noteButton({Color color, int note}) {
      return Expanded(
        child: FlatButton(
            color: color,
            onPressed: () {
              playsound(note);
            },
            child: null),
      );
    }
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              noteButton(color: Colors.red, note: 1),
              noteButton(color: Colors.orange, note: 2),
              noteButton(color: Colors.yellow, note: 3),
              noteButton(color: Colors.green, note: 4),
              noteButton(color: Colors.teal, note: 5),
              noteButton(color: Colors.blue, note: 6),
              noteButton(color: Colors.purple, note: 7),
            ],
          ),
        ),
      ),
    );
  }
}
