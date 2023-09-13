import 'package:flutter/material.dart';
import 'app.dart';

import 'welcome_screen.dart';

void main() {
  runApp(UbuntuTourApp());
}

class UbuntuTourApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ubuntu Tour',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WelcomeScreen(),
    );
  }
}
