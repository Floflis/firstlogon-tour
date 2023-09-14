import 'package:flutter/material.dart';
import '../../app.dart';

import 'dart:io';

//import 'step1.dart';
//import 'step2.dart';
//import 'step3.dart';
// import more steps as needed

class StepScreen extends StatefulWidget {
  @override
  _StepScreenState createState() => _StepScreenState();
}

class _StepScreenState extends State<StepScreen> {
  int _currentStep = 0;
  bool _checkboxValue = false;

  List<Step> _buildSteps() {
    return [
      Step(
        title: Text('Step 1: Mouse cursor 🖱️'),
        content: Column(
          children: <Widget>[
            Text('How you prefer your mouse cursor color?'),
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
                        //String output = await Executable.run('gsettings set org.cinnamon.desktop.interface cursor-theme Floflis');
                        //String output = await Executable.run('cinnamon-settings');
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
//            Checkbox(
//              value: _checkboxValue,
//              onChanged: (bool? value) {
//                setState(() {
//                  _checkboxValue = value ?? false;
//                });
//              },
//            ),
//            ElevatedButton(
//              child: Text('Run Executable (sample: cinnamon-settings)'),
//              onPressed: () async {
//                String output = await Executable.run('cinnamon-settings');
//                print(output);
//              },
//            ),
//ListTile(
//  title: const Text('Option 1'),
//  leading: Radio(
//    value: 1,
//    groupValue: _radioValue,
//    onChanged: (int? value) {
//      setState(() {
//        _radioValue = value;
//      });
//    },
//  ),
//)
          ],
        ),
      ),
      Step(
        title: Text('Step 2: Theme intensity'),
        content: Column(
          children: <Widget>[
            Text('How you prefer your system theme?'),
//            ElevatedButton(
//              child: Text('⚫Dark (lets save my eyes while computing in the dark)'),
//              onPressed: () async {
//                //String output = await Executable.run('gsettings set org.cinnamon.desktop.wm.preferences theme Yaru-floflis-dark && gsettings set org.cinnamon.desktop.interface gtk-theme Yaru-floflis-dark && gsettings set org.cinnamon.theme name Yaru-floflis-dark');
//                var process = await Process.run('gsettings', ['set', 'org.cinnamon.desktop.wm.preferences', 'theme', 'Yaru-floflis-dark']);
//                var processtwo = await Process.run('gsettings', ['set', 'org.cinnamon.desktop.interface', 'gtk-theme', 'Yaru-floflis-dark']);
//                var processthree = await Process.run('gsettings', ['set', 'org.cinnamon.theme', 'name', 'Yaru-floflis-dark']);
//                setState(() {
//                  _currentStep++;
//                });
//              },
//            ),
            
//InkWell learned from https://www.fluttercampus.com/guide/150/how-to-make-any-widget-clickable-on-flutter/
InkWell(
    onTap: () async {
        //print("card is tapped.");
                        //String output = await Executable.run('gsettings set org.cinnamon.desktop.interface cursor-theme Floflis');
                        //String output = await Executable.run('cinnamon-settings');
                        var process = await Process.run('gsettings', ['set', 'org.cinnamon.desktop.wm.preferences', 'theme', 'Yaru-floflis-dark']);
                var processtwo = await Process.run('gsettings', ['set', 'org.cinnamon.desktop.interface', 'gtk-theme', 'Yaru-floflis-dark']);
                var processthree = await Process.run('gsettings', ['set', 'org.cinnamon.theme', 'name', 'Yaru-floflis-dark']);
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
      Image.asset('assets/img/screens/steps/themecolor/dark.png'),
      Text('⚫Dark (lets save my eyes while computing in the dark)'),
    ],
  ),
),
),
            
//            ElevatedButton(
//              child: Text('🟤Normal (i have strong eyes)'),
//              onPressed: () async {
//                //String output = await Executable.run('gsettings set org.cinnamon.desktop.wm.preferences theme Yaru-floflis && gsettings set org.cinnamon.desktop.interface gtk-theme Yaru-floflis && gsettings set org.cinnamon.theme name Yaru-floflis');
//                var process = await Process.run('gsettings', ['set', 'org.cinnamon.desktop.wm.preferences', 'theme', 'Yaru-floflis']);
//                var processtwo = await Process.run('gsettings', ['set', 'org.cinnamon.desktop.interface', 'gtk-theme', 'Yaru-floflis']);
//                var processthree = await Process.run('gsettings', ['set', 'org.cinnamon.theme', 'name', 'Yaru-floflis']);
//                setState(() {
//                  _currentStep++;
//                });
//              },
//            ),
            
//InkWell learned from https://www.fluttercampus.com/guide/150/how-to-make-any-widget-clickable-on-flutter/
InkWell(
    onTap: () async {
        //print("card is tapped.");
                        //String output = await Executable.run('gsettings set org.cinnamon.desktop.interface cursor-theme Floflis');
                        //String output = await Executable.run('cinnamon-settings');
                        var process = await Process.run('gsettings', ['set', 'org.cinnamon.desktop.wm.preferences', 'theme', 'Yaru-floflis']);
                var processtwo = await Process.run('gsettings', ['set', 'org.cinnamon.desktop.interface', 'gtk-theme', 'Yaru-floflis']);
                var processthree = await Process.run('gsettings', ['set', 'org.cinnamon.theme', 'name', 'Yaru-floflis']);
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
      Image.asset('assets/img/screens/steps/themecolor/normal.png'),
      Text('🟤Normal (i have strong eyes)'),
    ],
  ),
),
),
            
//            ElevatedButton(
//              child: Text('⚪Light (i have stronger eyes, still; lets not abuse)'),
//              onPressed: () async {
//                //String output = await Executable.run('gsettings set org.cinnamon.desktop.wm.preferences theme Yaru-floflis-light && gsettings set org.cinnamon.desktop.interface gtk-theme Yaru-floflis-light && gsettings set org.cinnamon.theme name Yaru-floflis-light');
//                var process = await Process.run('gsettings', ['set', 'org.cinnamon.desktop.wm.preferences', 'theme', 'Yaru-floflis-light']);
//                var processtwo = await Process.run('gsettings', ['set', 'org.cinnamon.desktop.interface', 'gtk-theme', 'Yaru-floflis-light']);
//                var processthree = await Process.run('gsettings', ['set', 'org.cinnamon.theme', 'name', 'Yaru-floflis-light']);
//                setState(() {
//                  _currentStep++;
//                });
//              },
//            ),
            
//InkWell learned from https://www.fluttercampus.com/guide/150/how-to-make-any-widget-clickable-on-flutter/
InkWell(
    onTap: () async {
        //print("card is tapped.");
                        //String output = await Executable.run('gsettings set org.cinnamon.desktop.interface cursor-theme Floflis');
                        //String output = await Executable.run('cinnamon-settings');
                        var process = await Process.run('gsettings', ['set', 'org.cinnamon.desktop.wm.preferences', 'theme', 'Yaru-floflis-light']);
                var processtwo = await Process.run('gsettings', ['set', 'org.cinnamon.desktop.interface', 'gtk-theme', 'Yaru-floflis-light']);
                var processthree = await Process.run('gsettings', ['set', 'org.cinnamon.theme', 'name', 'Yaru-floflis-light']);
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
      Image.asset('assets/img/screens/steps/themecolor/light.png'),
      Text('⚪Light (i have stronger eyes, still; lets not abuse)'),
    ],
  ),
),
),
          ],
        ),
      ),
      // Add more steps here
    ];
  }

//List<Step> _buildSteps(BuildContext context) {
//  return [
//    step1(context),
//    step2(context),
//    step3(context),
//    // add more steps here
//  ];
//}

@override
Widget build(BuildContext context) {
  return FutureBuilder<String>(
    future: Executable.getOSName(),
    builder: (BuildContext context, AsyncSnapshot<String> osname) {
      if (osname.connectionState == ConnectionState.waiting) {
        return CircularProgressIndicator();
      } else {
        return Scaffold(
          appBar: AppBar(
            title: Text('${osname.data} Tour'),
          ),
          body: Stepper(
            steps: _buildSteps(),
            currentStep: _currentStep,
            onStepContinue: () {
              if (_currentStep < _buildSteps().length - 1) {
                setState(() {
                  _currentStep++;
                });
              }
            },
            onStepCancel: () {
              if (_currentStep > 0) {
                setState(() {
                  _currentStep--;
                });
              }
            },
          ),
        );
      }
    },
  );
}
}
