import 'package:flutter/material.dart';
import '../../app.dart';

import 'dart:io';

import 'step1.dart';
import 'step2.dart';
import 'step3.dart';
// import more steps as needed

class StepScreen extends StatefulWidget {
  @override
  _StepScreenState createState() => _StepScreenState();
}

class _StepScreenState extends State<StepScreen> {
  int _currentStep = 0;
  bool _checkboxValue = false;

  void _incrementStep() {
    if (_currentStep < _buildSteps(context).length - 1) {
      setState(() {
        _currentStep++;
      });
    }
  }

  // rest of your code...
//}

//class _StepScreenState extends State<StepScreen> {
//  int _currentStep = 0;
//  bool _checkboxValue = false;

List<Step> _buildSteps(BuildContext context) {
  return [
    step1(context, _currentStep, () => _incrementStep()),
    step2(context, _currentStep, () => _incrementStep()),
    step3(context),
    // add more steps here
  ];
}

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
            steps: _buildSteps(context),
            currentStep: _currentStep,
            onStepContinue: () {
              if (_currentStep < _buildSteps(context).length - 1) {
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
