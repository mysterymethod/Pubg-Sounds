import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import '../components/reusableCard.dart';
import '../components/reusableCardSingle.dart';
import '../constants/constants.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  // static AudioCache player = AudioCache();
  List<bool> selections = [true, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pubg Sounds'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 15.0),
                ToggleButtons(
                  children: [
                    Text('  Single '),
                    Text('  Auto  '),
                  ],
                  isSelected: selections,
                  onPressed: (int index) {
                    setState(() {
                      if (index == 1) {
                        selections[1] = true;
                        selections[0] = false;
                      } else {
                        selections[0] = true;
                        selections[1] = false;
                      }
                    });
                  },
                  color: Colors.white30,
                  selectedColor: Colors.white,
                  fillColor: Colors.white24,
                  borderRadius: BorderRadius.circular(25.0),
                  selectedBorderColor: Colors.white,
                ),
                for (var i in kARguns)
                  selections[0]
                      ? ReusableCardSingle(
                          audio: i['name'],
                          img: i['name'],
                          selections: selections,
                          damage: i['damage'],
                          magazine: i['magazine'],
                          range: i['range'],
                          bulletSpeed: i['bulletSpeed'],
                          fireRate: i['fireRate'],
                        )
                      : ReusableCard(
                          audio: i['name'],
                          img: i['name'],
                          selections: selections,
                          damage: i['damage'],
                          magazine: i['magazine'],
                          range: i['range'],
                          bulletSpeed: i['bulletSpeed'],
                          fireRate: i['fireRate'],
                        ),
                SizedBox(height: 50.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
