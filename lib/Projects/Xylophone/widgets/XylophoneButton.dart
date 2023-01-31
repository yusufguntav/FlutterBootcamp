import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class XylophoneButton extends StatelessWidget {
  String noteNumber;
  Color color;
  XylophoneButton({super.key, required this.noteNumber, required this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final player = AudioPlayer();
        await player.play(
          AssetSource('audio/note$noteNumber.wav'),
        );
      },
      child: Container(
        color: color,
      ),
    );
  }
}
