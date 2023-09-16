import 'package:flutter/material.dart';
import '../../app.dart';
import 'steps.dart';

import 'dart:io';

Step step3(BuildContext context) {
  return Step(
    title: Text('Step 3'),
    content: Column(
      children: <Widget>[
        Text('This is the placeholder for Step 3'),
ElevatedButton(
  child: Text('Finalize'),
  onPressed: () {
    //SystemNavigator.pop();
    exit(0); //from https://codewithflutter.com/flutter-how-to-programmatically-exit-the-app/
  },
)
        // Add more widgets here
      ],
    ),
  );
}
