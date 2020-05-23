import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Позволяет потомку занять все свободное место в Column, Row, Flex в
// направлении main axis. Если таких виджетов несколько в родителе, то
// используют свойство flex, чтобы поделить свободное место в заданной
// пропорции. Его метод build просто возвращает Expanded, который содержит
// SizedBox.shrink()
// https://api.flutter.dev/flutter/widgets/Spacer-class.html
class SpacerPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
          Spacer(),
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
