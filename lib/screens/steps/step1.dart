import 'package:flutter/material.dart';
import '../../app.dart';
import '../steps.dart';

import 'dart:io';

Step step1(BuildContext context, int currentStep, Function incrementStep) {
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
                        var process = await Process.run('bash', [
  Directory.current.path + '/data/flutter_assets/include/firstlogon-tour_cli/core.sh',
  'changecursor_black'
]);
                        print('bash ' + [Directory.current.path+'/data/flutter_assets/include/firstlogon-tour_cli/core.sh', 'changecursor_black'].join(' '));
                incrementStep();
    },
//    onDoubleTap: (){
//      print("Card is double tapped.");
//    },
    child: Card(
  child: Column(
    children: <Widget>[
      Image.asset('assets/img/screens/steps/cursorcolor/black.png'),
      Text('Black (like in "MecOS"🍎)'),
    ],
  ),
),
),
//InkWell learned from https://www.fluttercampus.com/guide/150/how-to-make-any-widget-clickable-on-flutter/
InkWell(
    onTap: () async {
        //print("card is tapped.");
                        var process = await Process.run('bash', [
  Directory.current.path + '/data/flutter_assets/include/firstlogon-tour_cli/core.sh',
  'changecursor_white'
]);
                        print('bash ' + [Directory.current.path+'/data/flutter_assets/include/firstlogon-tour_cli/core.sh', 'changecursor_white'].join(' '));
                incrementStep();
    },
//    onDoubleTap: (){
//      print("Card is double tapped.");
//    },
    child: Card(
  child: Column(
    children: <Widget>[
      Image.asset('assets/img/screens/steps/cursorcolor/white.png'),
      Text('White (like in "WindOS"🪟)'),
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
