import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// https://api.flutter.dev/flutter/widgets/RotationTransition-class.html
class ScaleTransitionPractice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateScaleTransitionPractice();
  }
}

class _StateScaleTransitionPractice extends State<ScaleTransitionPractice>
    with SingleTickerProviderStateMixin {
  final _tween = Tween(begin: 1.0, end: 2.0);

  AnimationController _controller;

  bool _first = true;

  initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScaleTransition'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child: Center(
              child: ScaleTransition(
                scale: _tween.animate(_controller),
                child: Container(
                  width: 48,
                  height: 96,
                  color: Colors.green,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          FlatButton(
            color: Colors.green,
            onPressed: () {
              if (_first) {
                _controller.forward();
              } else {
                _controller.reverse();
              }
              _first = !_first;
            },
            child: Text(
              "CLICK ME!",
            ),
          )
        ],
      ),
    );
  }
}
