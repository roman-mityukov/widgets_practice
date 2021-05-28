import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:logging/logging.dart';

// Показывает потомков в вертикальном одномерном массиве
// mainAxisSize - max - оставляет доступное свободное пространство,
// min - убирает его. По умолчанию MainAxisSize.max
// crossAxisAlignment выравнивает по cross axis, если
// CrossAxisAlignment.stretch, то дает своим детям в качестве
// ограничения по высоте свой maxWidth
// Column дает горизонтальный constraint, но не дает вертикальный
// https://api.flutter.dev/flutter/widgets/Column-class.html
class ColumnPractice extends StatelessWidget {
  final _logger = Logger('ColumnPractice');
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Column'),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          LayoutBuilder(
            builder: (context, constraints) {
              _logger.fine(
                'constraints maxWidth ${constraints.maxWidth}, maxHeight ${constraints.maxHeight}',
              );
              // ColumnPractice: constraints maxWidth Infinity, maxHeight 718.5454545454545
              // Row дает вертикальный constraint, но не дает горизонтальный

              return Column(
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
              );
            },
          ),
          Column(
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
          Column(
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
          Column(
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
          Column(
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
          Column(
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
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('end_min'),
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
          )
        ],
      ),
    );
  }
}
