import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// https://api.flutter.dev/flutter/widgets/SlideTransition-class.html
class SlideTransitionPractice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateSlideTransitionPractice();
  }
}

class _StateSlideTransitionPractice extends State<SlideTransitionPractice>
    with SingleTickerProviderStateMixin {
  final _tween = Tween(begin: Offset.zero, end: Offset(5, 0.0));

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
        title: Text('SlideTransition'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child: Center(
              child: SlideTransition(
                position: _tween.animate(_controller),
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
