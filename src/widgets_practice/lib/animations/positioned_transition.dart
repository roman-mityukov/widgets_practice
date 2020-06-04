import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Работает, только если PositionedTransition расположен в Stack
// https://api.flutter.dev/flutter/widgets/PositionedTransition-class.html
class PositionedTransitionPractice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StatePositionedTransitionPractice();
  }
}

class _StatePositionedTransitionPractice
    extends State<PositionedTransitionPractice>
    with SingleTickerProviderStateMixin {
  final RelativeRectTween _relativeRectTween = RelativeRectTween(
    begin: RelativeRect.fromLTRB(80, 80, 180, 180),
    end: RelativeRect.fromLTRB(0, 0, 40, 40),
  );

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
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Expanded(
          child: Stack(
            children: <Widget>[
              PositionedTransition(
                rect: _relativeRectTween.animate(_controller),
                child: Container(
                  color: Colors.green,
                ),
              ),
            ],
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
    );
  }
}
