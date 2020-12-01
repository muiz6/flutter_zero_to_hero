import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(String fileName) {
    final player = AudioCache();
    player.play(fileName);
  }

  Widget soundTile(Color color, String fileName) {
    return Expanded(
      child: FlatButton(
        child: null,
        color: color,
        onPressed: () {
          playSound(fileName);
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
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              soundTile(Colors.red, 'note1.wav'),
              soundTile(Colors.orange, 'note2.wav'),
              soundTile(Colors.yellow, 'note3.wav'),
              soundTile(Colors.green, 'note4.wav'),
              soundTile(Colors.teal, 'note5.wav'),
              soundTile(Colors.blue, 'note6.wav'),
              soundTile(Colors.purple, 'note7.wav'),
            ],
          ),
        ),
      ),
    );
  }
}
