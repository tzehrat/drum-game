import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(SesProject());
}

class SesProject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: DrumPage(),
      ),
    );
  }
}

class DrumPage extends StatelessWidget {
  final oynatici = AudioCache();
  SesiCal(String dosya) {
    oynatici.play('$dosya');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: buildButton('ses3.m4a', Colors.teal),
                ),
                Expanded(
                  child: buildButton('ses2.m4a', Colors.deepPurple),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: buildButton('ses4.m4a', Colors.green),
                ),
                Expanded(
                  child: buildButton('ses3.m4a', Colors.blueGrey),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: buildButton('ses1.mp3', Colors.white60),
                ),
                Expanded(
                  child: buildButton('ses2.m4a', Colors.pink),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: buildButton('ses4.m4a', Colors.brown),
                ),
                Expanded(
                  child: buildButton('ses1.mp3', Colors.lime),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  TextButton buildButton(String ses, Color renk) {
    return TextButton(
      onPressed: () {
        SesiCal(ses);
      },
      child: Container(
        color: renk,
      ),
    );
  }
}
