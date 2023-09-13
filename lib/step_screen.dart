import 'package:flutter/material.dart';
import 'app.dart';

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
              child: Text('Run Executable'),
              onPressed: () async {
                String output = await Executable.run('your-command-here');
                print(output);
              },
            ),
            Checkbox(
              value: _checkboxValue,
              onChanged: (bool? value) {
                setState(() {
                  _checkboxValue = value;
                });
              },
            ),
          ],
        ),
      ),
      // Add more steps here
    ];
  }

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
