import 'dart:ui';

import 'package:flutter/material.dart';

// Виджет, который служит индикатором позиции скролла
// https://api.flutter.dev/flutter/material/Scrollbar-class.html
class ScrollbarPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scrollbar'),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Container(
            width: 100,
            height: 2000,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [const Color(0xFF000000), const Color(0xFFFFFFFF)],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
