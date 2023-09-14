import 'package:flutter/material.dart';
import '../app.dart';
import 'dart:io';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
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
              title: Text('Welcome to ${osname.data}'),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Welcome to ${osname.data}!',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Text(
                    'This is your first time logging in. Let\'s set up your system.',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  SizedBox(height: 50),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/steps');
                    },
                    child: Text('Start Setup'),
                  ),
                  FutureBuilder<String>(
                    //future: Executable.getImagePath('include/linux-icon-getter/./linux-icon-getter distributor-logo'),
                    future: Executable.getImagePath(),
                    //builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                    builder: (BuildContext context, AsyncSnapshot<String> imagepath) {
                        print('Current path: ${Directory.current.path}');
                      //if (snapshot.connectionState == ConnectionState.waiting) {
                        if (imagepath.connectionState == ConnectionState.waiting) {
                        print('Image path: ${imagepath.data}');
                        print('Image path: $imagepath.data');
                        return CircularProgressIndicator();
                      } else {
                        String imagePathS = imagepath.data!;
                        print('Image path: $imagePathS'); // Add this line
                        print('Image path: ${imagepath.data}');
                        if (imagePathS.endsWith('.svg')) {
                          return SvgPicture.file(
                            File(imagePathS),
                            width: 200,
                            height: 200,
                          );
                        } else if (imagePathS.endsWith('.png')) {
                          return Image.file(
                            File(imagePathS),
                            width: 200,
                            height: 200,
                          );
                        } else {
                          return Text('Unsupported image format');
                        }
                      }
                    },
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
