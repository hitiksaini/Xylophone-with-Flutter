import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';    //I used a flutter dart package to play audio

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNum){
    final player = AudioCache();      //creating a asset audio player to play local sounds
    player.play("note$soundNum.wav");
  }
  Expanded buildKey({Color color , int soundNum}){
    return  Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(soundNum);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text("Hey, this is Hitik! Press these button to play sounds"),
              buildKey(color: Colors.blueAccent, soundNum: 1),
              buildKey(color: Colors.red, soundNum: 2),
              buildKey(color: Colors.yellow, soundNum: 3),
              buildKey(color: Colors.orange, soundNum: 4),
              buildKey(color: Colors.purple, soundNum: 5),
              buildKey(color: Colors.blueGrey, soundNum: 6),
              buildKey(color: Colors.teal, soundNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
