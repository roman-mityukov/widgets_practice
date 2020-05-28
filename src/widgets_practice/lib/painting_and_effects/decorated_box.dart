import 'package:flutter/material.dart';

// Виджет, которые отрисовывает свой decoration перед или после потомка
// Используется в Container для реализации decoration
// https://api.flutter.dev/flutter/widgets/DecoratedBox-class.html
class DecoratedBoxPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DecoratedBox'),
      ),
      body: DecoratedBox(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: const Alignment(-0.5, -0.6),
            radius: 0.15,
            colors: <Color>[
              const Color(0xFFEEEEEE),
              const Color(0xFF111133),
            ],
            stops: <double>[0.9, 1.0],
          ),
        ),
        child: SizedBox.expand(),
      ),
    );
  }
}
