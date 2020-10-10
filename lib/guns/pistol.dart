import 'package:flutter/material.dart';
import '../components/reusableCardSingle.dart';
import 'package:pubg/constants/constants.dart';

class PISTOL extends StatefulWidget {
  @override
  _PISTOLState createState() => _PISTOLState();
}

class _PISTOLState extends State<PISTOL> {
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
                for (var i in kPISTOL)
                  ReusableCardSingle(
                    audio: i['name'],
                    img: i['name'],
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
