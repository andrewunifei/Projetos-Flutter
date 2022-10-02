import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playNote(String track){
    final player = AudioPlayer();
    player.play(AssetSource(track));
  }

  Widget buildkey(String track, MaterialColor color){
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: (){
            this.playNote(track);
          },
        ),
      ),
    );
  }

  var sound;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildkey('note1.wav', Colors.teal),
                buildkey('note2.wav', Colors.red),
                buildkey('note3.wav', Colors.brown),
                buildkey('note4.wav', Colors.grey),
                buildkey('note5.wav', Colors.yellow),
                buildkey('note6.wav', Colors.blue),
                buildkey('note7.wav', Colors.purple),
            ]
          ),
        ),
      ),
    );
  }
}
