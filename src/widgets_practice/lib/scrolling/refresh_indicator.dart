import 'dart:ui';

import 'package:flutter/material.dart';

// Виджет, который позволяет реализовать swipe to refresh
// https://api.flutter.dev/flutter/material/RefreshIndicator-class.html
class RefreshIndicatorPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RefreshIndicator'),
      ),
      body: RefreshIndicator(
        onRefresh: () {
          return Future(() {});
        },
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
