import 'package:flutter/material.dart';

// Делает потомка прозрачным. Относительно требователен к производительности
// https://api.flutter.dev/flutter/widgets/Opacity-class.html
class OpacityPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opacity'),
      ),
      body: Center(
        child: Opacity(
          opacity: 0.2,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
