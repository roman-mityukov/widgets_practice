import 'package:flutter/material.dart';

// Применяет к потомку aspectRatio
// Начинает оценку используя ширину, если получившаяся высота больше
// родительского ограничения, то начинает с высоты.
// Если ограничения родителя не дают применить aspectRatio, то будут применены
// ограничения родителя.
// https://api.flutter.dev/flutter/widgets/AspectRatio-class.html
class AspectRatioPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          // в этом примере используется ширина для получения высоты
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              color: Colors.red,
            ),
          ),
          // в этом примере используется высота для получения ширины
          SizedBox(
            height: 48,
            child: AspectRatio(
              aspectRatio: 1 / 3,
              child: Container(
                color: Colors.green,
              ),
            ),
          )
        ],
      ),
    );
  }
}
