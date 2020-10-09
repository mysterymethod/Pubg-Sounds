import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:pubg/constants/constants.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {@required this.audio, @required this.img, @required selections});

  final String audio;
  final String img;
  List selections;
  static AudioCache cache = AudioCache();
  AudioPlayer player;
  double pi = 3.14;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) async {
        player = await cache.play('${audio}Auto.mp3');
      },
      onTapUp: (_) async {
        player.stop();
      },
      onTap: () {},
      child: Container(
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
                    'AKM',
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
                    width: 75.0,
                    color: Colors.black26,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Damage = 48',
                    style: kGunPropertyTextStyle,
                  ),
                  SizedBox(
                    height: 2.0,
                  ),
                  Text(
                    'Magazine = 30',
                    style: kGunPropertyTextStyle,
                  ),
                  SizedBox(
                    height: 2.0,
                  ),
                  Text(
                    'Range = 100 - 400',
                    style: kGunPropertyTextStyle,
                  ),
                  SizedBox(
                    height: 2.0,
                  ),
                  Text(
                    'Bullet Speed = 715',
                    style: kGunPropertyTextStyle,
                  ),
                  SizedBox(
                    height: 2.0,
                  ),
                  Text(
                    'Fire Rate = 0.080',
                    style: kGunPropertyTextStyle,
                  ),
                ],
              ),
            ),
            Transform.rotate(
              angle: pi / 4,
              child: Image.asset(
                'images/$img.png',
                height: 150.0,
                width: 150.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
