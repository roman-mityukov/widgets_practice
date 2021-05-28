import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:logging/logging.dart';

// Определяет позицию и размер своего ребенка в соответствии со своими
// свойствами fit (по умолчанию BoxFit.contain) и align (по умолчанию
// Alignment.center)
// https://api.flutter.dev/flutter/widgets/FittedBox-class.html
// https://habr.com/ru/post/500210/
class FittedBoxPractice extends StatelessWidget {
  final _logger = Logger('FittedBoxPractice');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          ),
          // Column дает горизонтальный constraint, но не дает вертикальный
          // Row наоборот
          FittedBox(
            fit: BoxFit.fitWidth,
            child: RichText(
              text: TextSpan(
                text: '525471',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 124,
                  fontWeight: FontWeight.bold,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: ' steps',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
