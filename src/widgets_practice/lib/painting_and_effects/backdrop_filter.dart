import 'dart:ui';

import 'package:flutter/material.dart';

// Применяет фильтр к виджетам, которые ниже потомка
// ImageFiltered применяет фильтр к потомку
// https://api.flutter.dev/flutter/widgets/BackdropFilter-class.html
class BackdropFilterAndImageFilteredPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BackdropFilter and ImageFiltered'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Text('0' * 10000),
          Center(
            child: Container(
              width: 50,
              height: 50,
              color: Colors.red,
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 2.0,
              sigmaY: 2.0,
            ),
            child: Container(
              alignment: Alignment.center,
              width: 200.0,
              height: 200.0,
              child: Text('Hello World'),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(
                sigmaX: 2,
                sigmaY: 2,
              ),
              child: Container(
                width: 50,
                height: 50,
                color: Colors.blue,
              ),
            ),
          )
        ],
      ),
    );
  }
}
