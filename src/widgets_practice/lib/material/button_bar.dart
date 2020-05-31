import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// Ряд кнопок. Используется в Dialog для actions
// https://api.flutter.dev/flutter/material/ButtonBar-class.html
class ButtonBarPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonBar'),
        elevation: 0,
      ),
      body: Center(
        child: ButtonBar(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.repeat),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.message),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.ac_unit),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
