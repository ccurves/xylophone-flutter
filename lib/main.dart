import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int num) async {
    final player = AudioPlayer();
    await player.play(AssetSource("note$num.wav"));
  }

  Expanded buildKeys(Color color, int soundNum) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNum);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
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
            children: [
              buildKeys(Colors.red, 1),
              buildKeys(Colors.blue, 2),
              buildKeys(Colors.yellow, 3),
              buildKeys(Colors.green, 4),
              buildKeys(Colors.purple, 5),
              buildKeys(Colors.orange, 6),
              buildKeys(Colors.blueGrey, 7),
            ],
          ),
        ),
      ),
    );
  }
}
