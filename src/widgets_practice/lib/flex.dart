import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// Отображает детей в виде одномерного массива, Column и Row наследуют от Flex
// и просто передают в супер конструктор соотвествующий direction
// https://api.flutter.dev/flutter/widgets/Flex-class.html
class FlexPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Flex(
        direction: Axis.vertical,
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints.tightFor(width: 100, height: 100),
            // Так как выше есть ConstrainedBox, то FittedBox будет размером
            // 100х100 и он смасштабирует Container так, чтобы он поместился в
            // FittedBox целиком. Т.к. Alignment.center то Container будет выровнен
            // по центру.
            child: FittedBox(
              child: Container(
                width: 200,
                height: 20,
                color: Colors.red,
              ),
              fit: BoxFit.contain,
              alignment: Alignment.center,
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints.tightFor(width: 100, height: 100),
            child: FittedBox(
              child: Container(
                width: 200,
                height: 20,
                color: Colors.green,
              ),
              fit: BoxFit.fill,
              alignment: Alignment.center,
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints.tightFor(width: 100, height: 100),
            child: FittedBox(
              child: Container(
                width: 20,
                height: 20,
                color: Colors.yellow,
              ),
              fit: BoxFit.none,
              alignment: Alignment.bottomLeft,
            ),
          )
        ],
      ),
    );
  }
}
