import 'package:flutter/material.dart';

// Применяет стиль к потомкам, которые его явно не задают
// https://api.flutter.dev/flutter/widgets/DefaultTextStyle-class.html
class DefaultTextStylePractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DefaultTextStyle'),
      ),
      body: DefaultTextStyle(
        style: TextStyle(color: Colors.red),
        child: Column(
          children: <Widget>[
            Text('Hello world'),
            Container(
              child: Text('Hello'),
            ),
            Container(
              child: Text(
                'Hello',
                style: TextStyle(color: Colors.green),
              ),
            )
          ],
        ),
      ),
    );
  }
}
