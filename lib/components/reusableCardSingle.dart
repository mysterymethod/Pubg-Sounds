import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

class ReusableCardSingle extends StatelessWidget {
  ReusableCardSingle(
      {@required this.audio, @required this.img, @required selections});

  final String audio;
  final String img;
  List selections;
  static AudioCache cache = AudioCache();
  AudioPlayer player;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTapDown: (_) async {
      //
      // },
      // onTapUp: (_) {
      //   player.stop();
      // },
      onTap: () async {
        player = await cache.play('$audio.mp3');
      },
      child: Container(
        color: Colors.red,
        child: Image.asset('images/$img.png'),
      ),
    );
  }
}
