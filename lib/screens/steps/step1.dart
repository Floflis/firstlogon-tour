import 'package:flutter/material.dart';
import '../../app.dart';
import 'steps.dart';

import 'dart:io';

Step step1(BuildContext context) {
  return Step(
        title: Text('Step 1: Mouse cursor 🖱️'),
        content: Column(
          children: <Widget>[
            Text('How you prefer your mouse cursor color?'),
Row(
  children: <Widget>[
//InkWell learned from https://www.fluttercampus.com/guide/150/how-to-make-any-widget-clickable-on-flutter/
InkWell(
    onTap: () async {
                        var process = await Process.run('gsettings', ['set', 'org.cinnamon.desktop.interface', 'cursor-theme', 'Floflis'
]);
                setState(() {
                  _currentStep++;
                });
    },
//    onDoubleTap: (){
//      print("Card is double tapped.");
//    },
    child: Card(
  child: Column(
    children: <Widget>[
      Image.asset('assets/img/screens/steps/cursorcolor/dark.png'),
      Text('⚫Black (like in "MecOS"🍎)'),
    ],
  ),
),
),
//InkWell learned from https://www.fluttercampus.com/guide/150/how-to-make-any-widget-clickable-on-flutter/
InkWell(
    onTap: () async {
        //print("card is tapped.");
                        var process = await Process.run('gsettings', ['set', 'org.cinnamon.desktop.interface', 'cursor-theme', 'DMZ-White'
]);
                setState(() {
                  _currentStep++;
                });
    },
//    onDoubleTap: (){
//      print("Card is double tapped.");
//    },
    child: Card(
  child: Column(
    children: <Widget>[
      Image.asset('assets/img/screens/steps/cursorcolor/light.png'),
      Text('⚪White (like in "WindOS"🪟)'),
    ],
  ),
),
),
  ],
)
          ],
        ),
      );
}
