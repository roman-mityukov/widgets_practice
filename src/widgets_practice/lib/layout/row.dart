import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:logging/logging.dart';

// Показывает потомков в горизонтальном одномерном массиве
// mainAxisSize - max - оставляет доступное свободное пространство,
// min - убирает его. По умолчанию MainAxisSize.max
// crossAxisAlignment выравнивает по cross axis, если
// CrossAxisAlignment.stretch, то дает своим детям в качестве
// ограничения по высоте свой maxHeight
// Row дает вертикальный constraint, но не дает горизонтальный
// https://api.flutter.dev/flutter/widgets/Row-class.html
class RowPractice extends StatelessWidget {
  final _logger = Logger('RowPractice');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row'),
      ),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text('start'),
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('center'),
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text('end'),
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('space\nbetween'),
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text('space\naround'),
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
            ],
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              _logger.fine(
                'constraints maxWidth ${constraints.maxWidth}, maxHeight ${constraints.maxHeight}',
              );
              // Column дает горизонтальный constraint, но не дает вертикальный
              // RowPractice: constraints maxWidth 392.72727272727275, maxHeight Infinity
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text('space\nevenly'),
                  Container(
                    color: Colors.red,
                    width: 50,
                    height: 50,
                  ),
                  Container(
                    color: Colors.red,
                    width: 50,
                    height: 50,
                  ),
                  Container(
                    color: Colors.red,
                    width: 50,
                    height: 50,
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
