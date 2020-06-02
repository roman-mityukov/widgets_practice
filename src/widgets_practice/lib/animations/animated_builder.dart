import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Виджет для создания анимации. Если упрощенно, то слушает AnimationController
// и на каждое изменение его value вызывает builder.
// https://api.flutter.dev/flutter/widgets/AnimatedBuilder-class.html
class AnimatedBuilderPractice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateAnimatedBuilderPractice();
  }
}

class _StateAnimatedBuilderPractice extends State<AnimatedBuilderPractice>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    // по умолчанию AnimationController меняет значение от 0.0 до 1.0 за
    // заданный duration
    _controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      child: Container(
        width: 200.0,
        height: 200.0,
        color: Colors.green,
        child: const Center(
          child: Text('Whee!'),
        ),
      ),
      builder: (BuildContext context, Widget child) {
        return Transform.rotate(
          angle: _controller.value * 2.0 * 3.141592,
          child: child,
        );
      },
    );
  }
}
