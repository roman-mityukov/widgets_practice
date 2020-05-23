import 'package:flutter/material.dart';

// Позволяет потомку занять все свободное место в Column, Row, Flex в
// направлении main axis. Просто расширяет Flexible и передает в его
// конструктор flex:1, fit: FlexFit.tight
// https://api.flutter.dev/flutter/widgets/Expanded-class.html
class ExpandedPractice extends StatelessWidget {
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
          Expanded(
            child: Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
          ),
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
