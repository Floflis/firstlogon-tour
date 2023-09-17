import 'package:flutter/material.dart';
import 'app.dart';

import 'screens/welcome.dart';

void main() {
  runApp(AppLoader());
}

class AppLoader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FutureBuilder(
        future: Future.delayed(Duration(seconds: 2)), // Simulate a loading delay
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else {
            return FirstLogonTourApp();
          }
        },
      ),
    );
  }
}
