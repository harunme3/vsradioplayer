import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AudioPlayer audioPlayer = AudioPlayer();
  play() async {
    int result = await audioPlayer.play(
        'https://node-02.zeno.fm/20g8vnc5mp8uv?rj-ttl=5&rj-tok=AAABfgb0o0UA0lir-FnNka58mA');
    if (result == 1) {
      // success
      print('success');
    } else {
      print('failed');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('data'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                audioPlayer.pause();
                play();
              },
              child: Container(
                decoration: BoxDecoration(color: Colors.red),
                child: Text('Press on it'),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
