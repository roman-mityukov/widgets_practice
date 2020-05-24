import 'package:flutter/material.dart';

// Наследует от Stack, показывает только одного ребенка, который располагается
// по заданному индексу
// https://api.flutter.dev/flutter/widgets/IndexedStack-class.html
class IndexedStackPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
      ),
      body: SizedBox.expand(
        child: IndexedStack(
          index: 0,
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
