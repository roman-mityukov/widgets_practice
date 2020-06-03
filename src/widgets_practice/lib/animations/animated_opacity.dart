import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//
// https://api.flutter.dev/flutter/widgets/AnimatedOpacity-class.html
class AnimatedOpacityPractice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateAnimatedOpacityPractice();
  }
}

class _StateAnimatedOpacityPractice extends State<AnimatedOpacityPractice> {
  double opacityLevel = 1.0;

  void _changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedOpacity'),
      ),
      body: Column(
        children: <Widget>[
          FlatButton(
            child: Text('Change'),
            onPressed: _changeOpacity,
          ),
          AnimatedOpacity(
            opacity: opacityLevel,
            duration: Duration(seconds: 3),
            child: FlutterLogo(),
          ),
        ],
      ),
    );
  }
}
