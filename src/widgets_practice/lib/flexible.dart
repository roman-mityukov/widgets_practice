import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Позволяет потомку занять все свободное место в Column, Row, Flex в
// направлении main axis. Если таких виджетов несколько в родителе, то
// используют свойство flex, чтобы поделить свободное место в заданной
// пропорции
// https://api.flutter.dev/flutter/widgets/Flexible-class.html
class FlexiblePractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              // в этом примере используется ширина для получения высоты
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
              // в этом примере используется высота для получения ширины
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
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
          Column(
            children: <Widget>[
              // в этом примере используется ширина для получения высоты
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
              // в этом примере используется высота для получения ширины
              Flexible(
                flex: 1,
                fit: FlexFit.loose,
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
          )
        ],
      ),
    );
  }
}
