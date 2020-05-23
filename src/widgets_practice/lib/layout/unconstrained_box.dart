import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// Не накладывает ограничения на размеры потомков
// https://api.flutter.dev/flutter/widgets/UnconstrainedBox-class.html
// https://habr.com/ru/post/500210/
class UnconstrainedBoxPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // UnconstrainedBox не накладывает ограничений на размеры потомков,
      // поэтому работают ограничения LimitedBox
      body: UnconstrainedBox(
          child: LimitedBox(
              maxWidth: 100,
              child: Container(
                color: Colors.red,
                width: double.infinity,
                height: 100,
              )
          )
      ),
    );
  }
}