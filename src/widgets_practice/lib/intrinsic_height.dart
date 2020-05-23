import 'package:flutter/material.dart';

// Виджет позволяет потомку определить свой размер и использовать этот размер
// в качестве ограничения
// https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e
// https://api.flutter.dev/flutter/widgets/IntrinsicHeight-class.html
class IntrinsicHeightPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('IntrinsicHeight')),
      body: Center(
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              RaisedButton(
                onPressed: () {},
                child: Text('Short'),
              ),
              RaisedButton(
                onPressed: () {},
                child: Text('A bit Longer'),
              ),
              RaisedButton(
                onPressed: () {},
                child: Text('The Longest\ntext button'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
