import 'package:flutter/material.dart';
import '../../app.dart';
import 'steps.dart';

import 'dart:io';

Step laststep(BuildContext context) {
  return Step(
        title: Text('Finish'),
        content: Column(
          children: <Widget>[
            Text('Youre all set! Welcome!'),
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
ElevatedButton(
  child: Text('Finalize'),
  onPressed: () {
    //SystemNavigator.pop();
    //exit();
    exit(0); //from https://codewithflutter.com/flutter-how-to-programmatically-exit-the-app/
  },
)
          ],
        ),
      );
}
