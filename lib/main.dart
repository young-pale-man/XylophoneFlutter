import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

final player = AudioPlayer();

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                XylophoneButton(
                  noteNumber: 1,
                  color: Colors.red,
                ),
                XylophoneButton(
                  noteNumber: 2,
                  color: Colors.orange,
                ),
                XylophoneButton(
                  noteNumber: 3,
                  color: Colors.yellow,
                ),
                XylophoneButton(
                  noteNumber: 4,
                  color: Colors.green,
                ),
                XylophoneButton(
                  noteNumber: 5,
                  color: Colors.blue.shade900,
                ),
                XylophoneButton(
                  noteNumber: 6,
                  color: Colors.blue,
                ),
                XylophoneButton(
                  noteNumber: 7,
                  color: Colors.purple,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class XylophoneButton extends StatelessWidget {
  XylophoneButton({required this.noteNumber, required this.color, super.key});

  int noteNumber;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: MaterialButton(
          enableFeedback: false,
          onPressed: () {
            player.play(AssetSource('note$noteNumber.wav'));
          },
          color: color,
          child: Text(
            'Note $noteNumber',
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
