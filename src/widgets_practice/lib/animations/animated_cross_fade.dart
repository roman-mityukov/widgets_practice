import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Переход из одного виджета в другой
// https://api.flutter.dev/flutter/widgets/AnimatedCrossFade-class.html
class AnimatedCrossFadePractice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateAnimatedCrossFadePractice();
  }
}

class _StateAnimatedCrossFadePractice extends State<AnimatedCrossFadePractice> {
  bool _first = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedCrossFade'),
      ),
      body: Column(
        children: <Widget>[
          FlatButton(
            child: Text('Change'),
            onPressed: () {
              setState(
                () {
                  _first = !_first;
                },
              );
            },
          ),
          AnimatedCrossFade(
            duration: const Duration(seconds: 1),
            firstChild: const FlutterLogo(
                style: FlutterLogoStyle.horizontal, size: 50.0),
            secondChild:
                const FlutterLogo(style: FlutterLogoStyle.stacked, size: 100.0),
            crossFadeState:
                _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          ),
        ],
      ),
    );
  }
}
