import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber){
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }
  Expanded buildKey({int noteNumber, Color colour}){
    return Expanded(
      child: FlatButton(
        padding: EdgeInsets.all(0.0),
        onPressed: (){
          playSound(noteNumber);
        },
        color: colour,
      ),
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
              buildKey(colour : Colors.redAccent, noteNumber: 1),
              buildKey(colour : Colors.deepOrangeAccent, noteNumber: 2),
              buildKey(colour : Colors.orangeAccent, noteNumber: 3),
              buildKey(colour : Colors.yellow.shade400, noteNumber: 4),
              buildKey(colour : Colors.tealAccent, noteNumber: 5),
              buildKey(colour : Colors.lightBlueAccent, noteNumber: 6),
              buildKey(colour : Colors.blue.shade700, noteNumber: 7),
              ],
          ),
        ),
      ),
    );
  }
}
