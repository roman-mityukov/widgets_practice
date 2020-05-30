import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//
// https://api.flutter.dev/flutter/material/FlatButton-class.html
class FlatButtonPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flat Button'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            FlatButton(
              onPressed: () {
                /*...*/
              },
              child: Text(
                "Flat Button",
              ),
            ),
            FlatButton(
              child: Text(
                "Flat Button",
              ),
            ),
            FlatButton(
              color: Colors.blue,
              textColor: Colors.white,
              disabledColor: Colors.grey,
              disabledTextColor: Colors.black,
              padding: EdgeInsets.all(8.0),
              splashColor: Colors.red,
              onPressed: () {
                /*...*/
              },
              child: Text(
                "Flat Button",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
