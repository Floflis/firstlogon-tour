import 'package:flutter/material.dart';
import '../app.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text('Ubuntu Tour'),
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
}
