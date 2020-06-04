import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// https://api.flutter.dev/flutter/widgets/RotationTransition-class.html
class RotationTransitionPractice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateRotationTransitionPractice();
  }
}

class _StateRotationTransitionPractice extends State<RotationTransitionPractice>
    with SingleTickerProviderStateMixin {
  final _tween = Tween(begin: 0.0, end: 0.25);

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
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RotationTransition'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child: Center(
              child: RotationTransition(
                turns: _tween.animate(_controller),
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
