import 'package:flutter/material.dart';

// Располагает детей стопкой, один поверх другого
// Если нет ограничений для Stack, то он принимает размер самого большого
// ребенка
// https://api.flutter.dev/flutter/widgets/Stack-class.html
class StackPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
      ),
      body: SizedBox.expand(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              color: Colors.green,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
