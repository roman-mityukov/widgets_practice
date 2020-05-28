import 'package:flutter/material.dart';

// Обрезает потомка прямоугольной областью
// https://api.flutter.dev/flutter/widgets/ClipRect-class.html
class ClipRectPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ClipRect'),
      ),
      body: ClipRect(
        child: Container(
          child: Align(
            alignment: Alignment.topLeft,
            widthFactor: 0.5,
            heightFactor: 0.5,
            child: Image.asset('assets/owl.jpg'),
          ),
        ),
      ),
    );
  }
}
