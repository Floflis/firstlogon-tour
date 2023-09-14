import 'package:flutter/material.dart';
import '../../app.dart';

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
        title: Text('Step 1'),
        content: Column(
          children: <Widget>[
            Text('This is the placeholder for Step 1'),
            ElevatedButton(
              child: Text('Run Executable (sample: cinnamon-settings)'),
              onPressed: () async {
                String output = await Executable.run('cinnamon-settings');
                print(output);
              },
            ),
            Checkbox(
              value: _checkboxValue,
              onChanged: (bool? value) {
                setState(() {
                  _checkboxValue = value ?? false;
                });
              },
            ),
          ],
        ),
      ),
      
      Step(
        title: Text('Step 2'),
        content: Column(
          children: <Widget>[
            Text('This is the placeholder for Step 2'),
            ElevatedButton(
              child: Text('Run Executable (sample: cinnamon-settings)'),
              onPressed: () async {
                String output = await Executable.run('cinnamon-settings');
                print(output);
              },
            ),
            Checkbox(
              value: _checkboxValue,
              onChanged: (bool? value) {
                setState(() {
                  _checkboxValue = value ?? false;
                });
              },
            ),
          ],
        ),
      ),
      Step(
        title: Text('Step 3'),
        content: Column(
          children: <Widget>[
            Text('This is the placeholder for Step 3'),
            ElevatedButton(
              child: Text('Run Executable (sample: cinnamon-settings)'),
              onPressed: () async {
                String output = await Executable.run('cinnamon-settings');
                print(output);
              },
            ),
Card(
  child: Column(
    children: <Widget>[
      Image.asset('path_to_your_image'),
      Text('Option 1'),
    ],
  ),
),
          ],
        ),
      ),
      Step(
        title: Text('Step 4: Mouse cursor 🖱️'),
        content: Column(
          children: <Widget>[
            Text('How you prefer your mouse cursor color?'),
            ElevatedButton(
              child: Text('⚫Black (like in "MecOS"🍎)'),
              onPressed: () async {
                String output = await Executable.run('gsettings set org.cinnamon.desktop.interface cursor-theme DMZ-White');
                print(output);
                setState(() {
                  _currentStep++;
                });
              },
            ),
            ElevatedButton(
              child: Text('⚪White (like in "WindOS"🪟)'),
              onPressed: () async {
                String output = await Executable.run('gsettings set org.cinnamon.desktop.interface cursor-theme Floflis');
                print(output);
                setState(() {
                  _currentStep++;
                });
              },
            ),
//InkWell learned from https://www.fluttercampus.com/guide/150/how-to-make-any-widget-clickable-on-flutter/
InkWell(
    onTap: () async {
        //print("card is tapped.");
                        //String output = await Executable.run('gsettings set org.cinnamon.desktop.interface cursor-theme DMZ-White');
                        String output = await Executable.run('cinnamon-settings');
                print(output);
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
                        String output = await Executable.run('cinnamon-settings');
                print(output);
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
//child: GestureDetector from https://www.geeksforgeeks.org/flutter-making-card-clickable/
//		children: GestureDetector(
//			
//			onTap: () {
//			ScaffoldMessenger.of(context).showSnackBar(
//					SnackBar(content: Text('Gesture Detected!')));			
//			},
//			children: Container(
//			
//			height: 100,
//			children: Card(
//				elevation: 10,
//				child: Text('Geeks for Geeks, Hello this is clickable card, tap me'),
//				color: Colors.cyanAccent,
//				
//			),
//			),
//		),
        ),
      ),
      Step(
        title: Text('Step 5'),
        content: Column(
          children: <Widget>[
            Text('This is the placeholder for Step 5'),
Card(
  child: Column(
    children: <Widget>[
      Image.asset('path_to_your_image'),
      Text('Option 1'),
    ],
  ),
),
          ],
        ),
      ),
      Step(
        title: Text('Step 6: Theme intensity'),
        content: Column(
          children: <Widget>[
            Text('How you prefer your system theme?'),
            ElevatedButton(
              child: Text('⚫Dark (lets save my eyes while computing in the dark)'),
              onPressed: () async {
                String output = await Executable.run('gsettings set org.cinnamon.desktop.wm.preferences theme Yaru-floflis-dark && gsettings set org.cinnamon.desktop.interface gtk-theme Yaru-floflis-dark && gsettings set org.cinnamon.theme name Yaru-floflis-dark');
                print(output);
                setState(() {
                  _currentStep++;
                });
              },
            ),
            ElevatedButton(
              child: Text('🟤Normal (i have strong eyes)'),
              onPressed: () async {
                String output = await Executable.run('gsettings set org.cinnamon.desktop.wm.preferences theme Yaru-floflis && gsettings set org.cinnamon.desktop.interface gtk-theme Yaru-floflis && gsettings set org.cinnamon.theme name Yaru-floflis');
                print(output);
                setState(() {
                  _currentStep++;
                });
              },
            ),
            ElevatedButton(
              child: Text('⚪Light (i have stronger eyes, still; lets not abuse)'),
              onPressed: () async {
                String output = await Executable.run('gsettings set org.cinnamon.desktop.wm.preferences theme Yaru-floflis-light && gsettings set org.cinnamon.desktop.interface gtk-theme Yaru-floflis-light && gsettings set org.cinnamon.theme name Yaru-floflis-light');
                print(output);
                setState(() {
                  _currentStep++;
                });
              },
            ),
Card(
  child: Column(
    children: <Widget>[
      Image.asset('path_to_your_image'),
      Text('Option 1'),
    ],
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
