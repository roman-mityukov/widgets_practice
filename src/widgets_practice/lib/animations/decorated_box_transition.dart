import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//
// https://api.flutter.dev/flutter/widgets/DecoratedBoxTransition-class.html
class DecoratedBoxTransitionPractice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateDecoratedBoxTransitionPractice();
  }
}

class _StateDecoratedBoxTransitionPractice
    extends State<DecoratedBoxTransitionPractice>
    with SingleTickerProviderStateMixin {
  AnimationController controller;

  final decorationTween = DecorationTween(
    begin: BoxDecoration(
      gradient: RadialGradient(
        center: const Alignment(-0.5, -0.6),
        radius: 0.15,
        colors: <Color>[
          const Color(0xFFEEEEEE),
          const Color(0xFF111133),
        ],
        stops: <double>[0.9, 1.0],
      ),
    ),
    end: BoxDecoration(
      gradient: RadialGradient(
        center: const Alignment(-0.1, -0.1),
        radius: 0.30,
        colors: <Color>[
          const Color(0xFFEEEEEE),
          const Color(0xFF111133),
        ],
        stops: <double>[0.9, 1.0],
      ),
    ),
  );

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 1),
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
        title: Text('DecoratedBoxTransition'),
      ),
      body: DecoratedBoxTransition(
        decoration: decorationTween.animate(controller),
        child: SizedBox.expand(),
      ),
    );
  }
}
