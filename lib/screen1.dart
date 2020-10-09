import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import './components/reusableCard.dart';
import './components/reusableCardSingle.dart';
import 'constants/constants.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  static AudioCache player = AudioCache();
  List<bool> selections = [true, false];
  List<String> gun = ['akm', 'm762', 'groza', 'mutant'];
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
                          underlineWidth: i['underlineWidth'],
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
                          underlineWidth: i['underlineWidth'],
                        ),
                SizedBox(height: 50.0),
                // selections[0]
                //     //----------------------------------------------------2.M762
                //     ? ReusableCardSingle(
                //         audio: 'm762',
                //         img: 'm762',
                //         selections: selections,
                //       )
                //     : ReusableCard(
                //         audio: 'm762',
                //         img: 'm762',
                //         selections: selections,
                //       ),
                // SizedBox(height: 50.0),
                // selections[0]
                //     //----------------------------------------------------3.Groza
                //     ? ReusableCardSingle(
                //         audio: 'groza',
                //         img: 'groza',
                //         selections: selections,
                //       )
                //     : ReusableCard(
                //         audio: 'groza',
                //         img: 'groza',
                //         selections: selections,
                //       ),
                // SizedBox(height: 50.0),
                // selections[0]
                //     //----------------------------------------------------3.MUTANT
                //     ? ReusableCardSingle(
                //         audio: 'mutant',
                //         img: 'mutant',
                //         selections: selections,
                //       )
                //     : ReusableCard(
                //         audio: 'mutant',
                //         img: 'mutant',
                //         selections: selections,
                //       ),
                // SizedBox(height: 50.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
