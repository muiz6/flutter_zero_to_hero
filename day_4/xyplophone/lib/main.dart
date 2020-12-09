import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {
  void playSound(String fileName) {
    final player = AudioCache();
    player.play(fileName);
  }

  Widget soundTile(Color color, String fileName) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(fileName);
        },
        child: null,
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            soundTile(Colors.red, "note1.wav"),
            soundTile(Colors.orange, "note2.wav"),
            soundTile(Colors.yellow, "note3.wav"),
            soundTile(Colors.green, "note4.wav"),
            soundTile(Colors.teal, "note5.wav"),
            soundTile(Colors.blue, "note6.wav"),
            soundTile(Colors.purple, "note7.wav"),
          ],
        ),
      ),
    );
  }
}
