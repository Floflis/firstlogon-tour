import 'package:flutter/material.dart';
import '../../app.dart';
import '../steps.dart';

import 'dart:io';

Step step2(BuildContext context, int currentStep, Function incrementStep) {
  return Step(
        title: Text('Step 2: Theme intensity'),
        content: Column(
          children: <Widget>[
            Text('How you prefer your system theme?'),
Row(
  children: <Widget>[
//InkWell learned from https://www.fluttercampus.com/guide/150/how-to-make-any-widget-clickable-on-flutter/
InkWell(
    onTap: () async {
        //print("card is tapped.");
                        var process = await Process.run('gsettings', ['set', 'org.cinnamon.desktop.wm.preferences', 'theme', 'Yaru-floflis-dark']);
                var processtwo = await Process.run('gsettings', ['set', 'org.cinnamon.desktop.interface', 'gtk-theme', 'Yaru-floflis-dark']);
                var processthree = await Process.run('gsettings', ['set', 'org.cinnamon.theme', 'name', 'Yaru-floflis-dark']);
                incrementStep();
    },
//    onDoubleTap: (){
//      print("Card is double tapped.");
//    },
    child: Card(
  child: Column(
    children: <Widget>[
      Image.asset('assets/img/screens/steps/themecolor/dark.png'),
      Text('Dark (lets save my eyes while computing in the dark)'),
    ],
  ),
),
),        
//InkWell learned from https://www.fluttercampus.com/guide/150/how-to-make-any-widget-clickable-on-flutter/
InkWell(
    onTap: () async {
        //print("card is tapped.");
                        var process = await Process.run('gsettings', ['set', 'org.cinnamon.desktop.wm.preferences', 'theme', 'Yaru-floflis']);
                var processtwo = await Process.run('gsettings', ['set', 'org.cinnamon.desktop.interface', 'gtk-theme', 'Yaru-floflis']);
                var processthree = await Process.run('gsettings', ['set', 'org.cinnamon.theme', 'name', 'Yaru-floflis']);
                incrementStep();
    },
//    onDoubleTap: (){
//      print("Card is double tapped.");
//    },
    child: Card(
  child: Column(
    children: <Widget>[
      Image.asset('assets/img/screens/steps/themecolor/normal.png'),
      Text('Normal (i have strong eyes)'),
    ],
  ),
),
),           
//InkWell learned from https://www.fluttercampus.com/guide/150/how-to-make-any-widget-clickable-on-flutter/
InkWell(
    onTap: () async {
        //print("card is tapped.");
                        //String output = await Executable.run('gsettings set org.cinnamon.desktop.interface cursor-theme Floflis');
                        //String output = await Executable.run('cinnamon-settings');
                        var process = await Process.run('gsettings', ['set', 'org.cinnamon.desktop.wm.preferences', 'theme', 'Yaru-floflis-light']);
                var processtwo = await Process.run('gsettings', ['set', 'org.cinnamon.desktop.interface', 'gtk-theme', 'Yaru-floflis-light']);
                var processthree = await Process.run('gsettings', ['set', 'org.cinnamon.theme', 'name', 'Yaru-floflis-light']);
                incrementStep();
    },
//    onDoubleTap: (){
//      print("Card is double tapped.");
//    },
    child: Card(
  child: Column(
    children: <Widget>[
      Image.asset('assets/img/screens/steps/themecolor/light.png'),
      Text('Light (i have stronger eyes, still; lets not abuse)'),
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
