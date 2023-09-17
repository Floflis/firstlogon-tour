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
                        var process = await Process.run('bash', [Directory.current.path + '/data/flutter_assets/include/firstlogon-tour_cli/core.sh', 'changethemestyle_dark']);
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
                        var process = await Process.run('bash', [Directory.current.path + '/data/flutter_assets/include/firstlogon-tour_cli/core.sh', 'changethemestyle_default']);
                incrementStep();
    },
//    onDoubleTap: (){
//      print("Card is double tapped.");
//    },
    child: Card(
  child: Column(
    children: <Widget>[
      Image.asset('assets/img/screens/steps/themecolor/default.png'),
      Text('Normal (i have strong eyes)'),
    ],
  ),
),
),
    FutureBuilder<String>(
      future: Executable.getOSName(),
      builder: (BuildContext context, AsyncSnapshot<String> osname) {
        if (osname.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else {
          // Check if osname.data is not equal to "Floflis"
          if (osname.data != "Floflis") {
            // If it's not "Floflis", return an empty Container (equivalent to display:none)
            return Container();
          } else {
            // If it's "Floflis", return the original Column widget
            return Column(
              children: <Widget>[
//InkWell learned from https://www.fluttercampus.com/guide/150/how-to-make-any-widget-clickable-on-flutter/
InkWell(
    onTap: () async {
        //print("card is tapped.");
                        //String output = await Executable.run('gsettings set org.cinnamon.desktop.interface cursor-theme Floflis');
                        //String output = await Executable.run('cinnamon-settings');
                        var process = await Process.run('bash', [Directory.current.path + '/data/flutter_assets/include/firstlogon-tour_cli/core.sh', 'changethemestyle_light']);
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
            );
          }
        }
      },
    ),
  ],
)
          ],
        ),
      );
}
