import 'dart:ui';

import 'package:flutter/material.dart';

// Виджет, который позволяет скроллить своего потомка
// https://api.flutter.dev/flutter/widgets/SingleChildScrollView-class.html
class SingleChildScrollViewPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SingleChildScrollView'),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: 100,
          height: 2000,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              // 10% of the width, so there are ten blinds.
              colors: [const Color(0xFF000000), const Color(0xFFFFFFFF)],
              // whitish to gray
              tileMode:
                  TileMode.repeated, // repeats the gradient over the canvas
            ),
          ),
        ),
      ),
    );
  }
}
