import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//
// https://api.flutter.dev/flutter/widgets/FadeTransition-class.html
class FadeTransitionPractice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateFadeTransitionPractice();
  }
}

class _StateFadeTransitionPractice extends State<FadeTransitionPractice>
    with SingleTickerProviderStateMixin {
  AnimationController controller;

  final decorationTween = Tween(begin: 0.0, end: 1.0);

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FadeTransition'),
      ),
      body: FadeTransition(
        opacity: decorationTween.animate(controller),
        child: Center(
          child: Text(
            'Hello world',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
          ),
        ),
      ),
    );
  }
}
