import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  AudioPlayer audioPlayer;
  String durasi = "00:00:00";

// ignore: non_constant_identifier_names
_MyAppState() {
  audioPlayer = AudioPlayer();
  audioPlayer.onAudioPositionChanged.listen((duration) {
    setState(() {
          durasi = duration.toString();
        });
      });
      audioPlayer.setReleaseMode(ReleaseMode.LOOP);
    }

    void playSound(String url) async {
      await audioPlayer.play("");
    }

    void pauseSound() async {
      await audioPlayer.pause();
    }

    void stopSound() async {
      await audioPlayer.resume();
    }

    void resumeSound() async {
      audioPlayer.resume();
    }
    
      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          home: Scaffold(
            appBar: AppBar(title: Text("playing a song")),
            body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {
                        playSound("http://codeskulptor-demos.commondatastorage.googleapis.com/pang/paza-moduless.mp3");
                      },
                      child: Text("Play"),
                    ),
                    RaisedButton(
                      onPressed: () {
                        pauseSound();
                      },
                      child: Text("Pause"),
                    ),
                    RaisedButton(
                      onPressed: () {
                        stopSound();
                      },
                      child: Text("Stop"),
                    ),
                    RaisedButton(
                      onPressed: () {
                        resumeSound();
                      },
                      child: Text("Resume"),
                    ),
                    Text(durasi, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),)
                  ]),
            ),
          ),
        );
      }
    
      void setState(Null Function() param0) {}
}
