import 'package:flutter/material.dart';
import 'screens/welcome.dart';
import 'screens/steps.dart';
import 'dart:io';
import 'dart:convert';

class Executable {
  static Future<String> run(String command) async {
    Process process = await Process.start(command, []);
    String output = await process.stdout.transform(utf8.decoder).join();
    return output;
  }

static Future<String> getOSName() async {
  var process = await Process.run('awk', ['-F=', '/^NAME/{print \$2}', '/etc/os-release']);
  return process.stdout.toString().trim().replaceAll('"', '');
}
}

class FirstLogonTourApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: Executable.getOSName(),
      builder: (BuildContext context, AsyncSnapshot<String> osname) {
        if (osname.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else {
          return MaterialApp(
      title: '${osname.data} Tour',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WelcomeScreen(),
      routes: {
        '/welcome': (context) => WelcomeScreen(),
        '/steps': (context) => StepScreen(),
            },
          );
        }
      },
    );
  }
}
