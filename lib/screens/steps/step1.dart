import 'package:flutter/material.dart';
import '../../app.dart';
import 'steps.dart';

import 'dart:io';

Step step1(BuildContext context) {
  return Step(
    title: Text('Step 1'),
    content: Column(
      children: <Widget>[
        Text('This is the placeholder for Step 1'),
        ElevatedButton(
          child: Text('Next'),
          onPressed: () {
            // Navigation logic goes here
          },
        ),
        // Add more widgets here
      ],
    ),
  );
}
