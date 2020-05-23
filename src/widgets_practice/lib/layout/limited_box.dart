import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// Накладывает ограничения на размеры потомков, если его родитель этого не
// делает. Может быть полезен в ячейках ListView, где их размер не ограничен
// https://api.flutter.dev/flutter/widgets/LimitedBox-class.html
// https://habr.com/ru/post/500210/
class LimitedBoxPractice extends StatelessWidget {
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