// import 'package:flutter/material.dart';
// import 'package:audioplayers/audio_cache.dart';
// import 'package:audioplayers/audioplayers.dart';
//
// class ReusableCardSingle extends StatelessWidget {
//   ReusableCardSingle(
//       {@required this.audio, @required this.img, @required selections});
//
//   final String audio;
//   final String img;
//   List selections;
//   static AudioCache cache = AudioCache();
//   AudioPlayer player;
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       // onTapDown: (_) async {
//       //
//       // },
//       // onTapUp: (_) {
//       //   player.stop();
//       // },
//       onTap: () async {
//         player = await cache.play('$audio.mp3');
//       },
//       child: Container(
//         color: Colors.red,
//         child: Image.asset('images/$img.png'),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:pubg/constants/constants.dart';

class ReusableCardSingle extends StatelessWidget {
  ReusableCardSingle(
      {@required this.audio,
      @required this.img,
      @required selections,
      @required this.damage,
      @required this.magazine,
      @required this.range,
      @required this.bulletSpeed,
      @required this.fireRate,
      @required this.underlineWidth});

  final String audio;
  final String img;
  final String damage;
  final String magazine;
  final String range;
  final String bulletSpeed;
  final String fireRate;
  final String underlineWidth;
  List selections;
  static AudioCache cache = AudioCache();
  AudioPlayer player;
  double pi = 3.14;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white70,
          boxShadow: [
            BoxShadow(
              offset: const Offset(3.0, 3.0),
              blurRadius: 5.0,
              spreadRadius: 2.0,
            ),
          ]),
      margin: EdgeInsets.all(15.0),
      padding: EdgeInsets.all(7.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(13.0, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  img.toUpperCase(),
                  style: TextStyle(
                    fontFamily: 'Playfair',
                    fontSize: 17.0,
                    letterSpacing: 3.0,
                    fontWeight: FontWeight.bold,
                    color: kAppBarColor,
                  ),
                ),
                Container(
                  height: 1.0,
                  width: double.parse(underlineWidth),
                  color: Colors.black26,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Damage = $damage',
                  style: kGunPropertyTextStyle,
                ),
                SizedBox(
                  height: 2.0,
                ),
                Text(
                  'Magazine = $magazine',
                  style: kGunPropertyTextStyle,
                ),
                SizedBox(
                  height: 2.0,
                ),
                Text(
                  'Range = $range',
                  style: kGunPropertyTextStyle,
                ),
                SizedBox(
                  height: 2.0,
                ),
                Text(
                  'Bullet Speed = $bulletSpeed',
                  style: kGunPropertyTextStyle,
                ),
                SizedBox(
                  height: 2.0,
                ),
                Text(
                  'Fire Rate = $fireRate',
                  style: kGunPropertyTextStyle,
                ),
              ],
            ),
          ),
          Transform.rotate(
            angle: pi / 4,
            child: GestureDetector(
              onTap: () async {
                player = await cache.play('$audio.mp3');
              },
              child: Image.asset(
                'images/$img.png',
                height: 150.0,
                width: 150.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
