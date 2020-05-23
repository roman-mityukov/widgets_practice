import 'package:flutter/cupertino.dart';
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
          // в этом примере используется ширина для получения высоты
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
          // в этом примере используется высота для получения ширины
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
