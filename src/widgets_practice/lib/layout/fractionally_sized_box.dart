import 'package:flutter/material.dart';

// Определяет какую долю размера займет потомок
// https://api.flutter.dev/flutter/widgets/FractionallySizedBox-class.html
class FractionallySizedBoxPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FractionallySizedBox'),
      ),
      body: FractionallySizedBox(
        widthFactor: 0.5,
        heightFactor: 0.5,
        child: Container(color: Colors.red),
      ),
    );
  }
}
