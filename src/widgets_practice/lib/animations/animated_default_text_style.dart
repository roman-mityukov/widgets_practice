import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//
// https://api.flutter.dev/flutter/widgets/AnimatedDefaultTextStyle-class.html
class AnimatedDefaultTextStylePractice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateAnimatedDefaultTextStylePractice();
  }
}

class _StateAnimatedDefaultTextStylePractice
    extends State<AnimatedDefaultTextStylePractice> {
  TextStyle _textStyle = TextStyle(color: Colors.red);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedDefaultTextStyle'),
      ),
      body: AnimatedDefaultTextStyle(
        duration: Duration(seconds: 1),
        style: _textStyle,
        child: Column(
          children: <Widget>[
            FlatButton(
              child: Text('Change'),
              onPressed: () {
                setState(
                  () {
                    _textStyle = TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold);
                  },
                );
              },
            ),
            Text('Hello world'),
            Container(
              child: Text('Hello'),
            ),
            Container(
              child: Text(
                'Hello',
                style: TextStyle(color: Colors.green),
              ),
            )
          ],
        ),
      ),
    );
  }
}
