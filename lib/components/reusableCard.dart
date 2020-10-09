import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:pubg/constants/constants.dart';

class ReusableCard extends StatefulWidget {
  ReusableCard({
    @required this.audio,
    @required this.img,
    @required selections,
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
  _ReusableCardState createState() => _ReusableCardState();
}

class _ReusableCardState extends State<ReusableCard> {
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
              opacity: visible ? 1.0 : 0.4,
              duration: Duration(milliseconds: 100),
              child: GestureDetector(
                onTapDown: (_) async {
                  player =
                      await ReusableCard.cache.play('${widget.audio}Auto.mp3');
                  setState(() {
                    visible = false;
                  });
                },
                onTapUp: (_) async {
                  player.stop();
                  setState(() {
                    visible = true;
                  });
                },
                child: Image.asset(
                  'images/bizon.png',
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

//double.parse(widget.underlineWidth)
//'images/${widget.img}.png'
