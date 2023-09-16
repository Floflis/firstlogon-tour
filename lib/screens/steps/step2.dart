import 'package:flutter/material.dart';
import 'app.dart';
import 'steps.dart';

//Step step1(BuildContext context) {
//  return Step(
//        title: Text('Step 1'),
//        content: Column(
//          children: <Widget>[
//            Text('This is the placeholder for Step 1'),
//            ElevatedButton(
//              child: Text('Run Executable'),
//              onPressed: () async {
//                String output = await Executable.run('your-command-here');
//                print(output);
//              },
//            ),
//            Checkbox(
//              value: _checkboxValue,
//              onChanged: (bool? value) {
//                setState(() {
//                  _checkboxValue = value ?? false;
//                });
//              },
//            ),
//          ],
//        ),
//      );
//}

Step step2(BuildContext context) {
  return Step(
    title: Text('Step 2'),
    content: Column(
      children: <Widget>[
        Text('This is the placeholder for Step 2'),
        ElevatedButton(
          child: Text('Next'),
          onPressed: () {
            // Navigation logic goes here
          },
        ),
        // Add more widgets here
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
//Card(
//  child: Column(
//    children: <Widget>[
//      Image.asset('path_to_your_image'),
//      Text('Option 1'),
//    ],
//  ),
//)
      ],
    ),
  );
}
