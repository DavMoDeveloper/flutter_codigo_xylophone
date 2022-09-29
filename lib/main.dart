import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  AudioPlayer audioPlayer = AudioPlayer();
  List<Map<String, dynamic>> notas = [
    {
      "note": 1,
      "color": Colors.pinkAccent,
    },
    {
      "note": 2,
      "color": Colors.indigoAccent,
    },
    {
      "note": 3,
      "color":Colors.redAccent,
    },
    {
      "note": 4,
      "color":Colors.blueGrey
    },
    {
      "note": 5,
      "color":Colors.amber,
    },
    {
      "note": 6,
      "color":Colors.black
    },
    {
      "note": 7,
      "color": Colors.greenAccent      
    },
  ];
  void playNote(int note){
    audioPlayer.play(AssetSource("audios/note$note.wav"));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Xylophone"),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ...List.generate(notas.length, (index) => Expanded(
              child: Container(
                color: notas[index]["color"],
                child: TextButton(
                  onPressed: () {
                    playNote(notas[index]["note"]);
                  },
                  child: Text(""),
                ),
              ),
            ),)
          ],
        ));
  }
}
