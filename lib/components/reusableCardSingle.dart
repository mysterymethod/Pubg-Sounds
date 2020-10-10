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

class ReusableCardSingle extends StatefulWidget {
  ReusableCardSingle({
    @required this.audio,
    @required this.img,
    @required this.damage,
    @required this.magazine,
    @required this.range,
    @required this.bulletSpeed,
    @required this.fireRate,
  });

  final String audio;
  final String img;
  final String damage;
  final String magazine;
  final String range;
  final String bulletSpeed;
  final String fireRate;

  static AudioCache cache = AudioCache();

  @override
  _ReusableCardSingleState createState() => _ReusableCardSingleState();
}

class _ReusableCardSingleState extends State<ReusableCardSingle> {
  List selections;

  AudioPlayer player;

  double pi = 3.14;

  bool visible = true;

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
                  widget.img.toUpperCase(),
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
                  width: 110.0,
                  color: Colors.black26,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Damage = ${widget.damage}',
                  style: kGunPropertyTextStyle,
                ),
                SizedBox(
                  height: 2.0,
                ),
                Text(
                  'Magazine = ${widget.magazine}',
                  style: kGunPropertyTextStyle,
                ),
                SizedBox(
                  height: 2.0,
                ),
                Text(
                  'Range = ${widget.range}',
                  style: kGunPropertyTextStyle,
                ),
                SizedBox(
                  height: 2.0,
                ),
                Text(
                  'Bullet Speed = ${widget.bulletSpeed}',
                  style: kGunPropertyTextStyle,
                ),
                SizedBox(
                  height: 2.0,
                ),
                Text(
                  'Fire Rate = ${widget.fireRate}',
                  style: kGunPropertyTextStyle,
                ),
              ],
            ),
          ),
          Transform.rotate(
            angle: pi / 4,
            child: AnimatedOpacity(
              opacity: visible ? 1.0 : 0.3,
              duration: Duration(milliseconds: 50),
              child: GestureDetector(
                onTap: () async {
                  player = await ReusableCardSingle.cache
                      .play('${widget.audio}.mp3');
                  setState(() {
                    visible = false;
                  });
                  Future.delayed(const Duration(milliseconds: 200), () {
                    setState(() {
                      visible = true;
                    });
                  });
                },
                child: Image.asset(
                  'images/${widget.img}.png',
                  height: 150.0,
                  width: 150.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
