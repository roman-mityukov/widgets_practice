import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// напрямую нельзя задать цвет фона
// https://stackoverflow.com/questions/55370952/how-to-set-the-background-color-of-a-flutter-outlinebutton
// https://api.flutter.dev/flutter/material/OutlineButton-class.html
class OutlineButtonPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Outline Button'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            OutlineButton(
              onPressed: () {
                /*...*/
              },
              child: Text(
                "Outline Button",
              ),
            ),
            OutlineButton(
              padding: EdgeInsets.all(8.0),
              splashColor: Colors.red,
              borderSide: BorderSide(color: Colors.red),
              onPressed: () {
                /*...*/
              },
              child: Text(
                "Outline Button",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            OutlineButton(
              padding: EdgeInsets.all(8.0),
              splashColor: Colors.red,
              child: Text(
                "Outline Button",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
