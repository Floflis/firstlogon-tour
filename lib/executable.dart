import 'dart:io';
import 'dart:convert';

class Executable {
  static Future<String> run(String command) async {
    Process process = await Process.start(command, []);
    String output = await process.stdout.transform(utf8.decoder).join();
    return output;
  }
}
