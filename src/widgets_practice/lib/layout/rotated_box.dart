import 'package:flutter/material.dart';

// Переворачивает своего потомка. В отличие от Transform, применяется на этапе
// layout, а не painting. Следовательно занимает столько же места, сколько и
// перевернутый потомок
// https://api.flutter.dev/flutter/widgets/RotatedBox-class.html
class RotatedBoxPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RotatedBox'),
      ),
      body: RotatedBox(
        quarterTurns: 1,
        child: Container(
          width: 10,
          height: 100,
          color: Colors.red,
        ),
      ),
    );
  }
}
