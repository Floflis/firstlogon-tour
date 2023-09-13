```dart
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Ubuntu'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to Ubuntu!',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'This is your first time logging in. Let\'s set up your system.',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            SizedBox(height: 50),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/step');
              },
              child: Text('Start Setup'),
            ),
          ],
        ),
      ),
    );
  }
}
```
