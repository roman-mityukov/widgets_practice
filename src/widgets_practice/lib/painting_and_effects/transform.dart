import 'package:flutter/material.dart';

// Применяет трансформацию к своему потомку перед painting, а не перед layout
// как это делает RotatedBox, следовательно трансформация не учитывается при
// определении размеров виджета
// Transform.rotate
// Transform.scale
// Transform.translate
// https://api.flutter.dev/flutter/widgets/Transform-class.html
class TransformPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transform'),
      ),
      body: Center(
        child: Container(
          color: Colors.black,
          child: Transform(
            alignment: Alignment.topRight,
            transform: Matrix4.skewY(0.3)..rotateZ(-3.14 / 12.0),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              color: const Color(0xFFE8581C),
              child: const Text('Apartment for rent!'),
            ),
          ),
        ),
      ),
    );
  }
}
