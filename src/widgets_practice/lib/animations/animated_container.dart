import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Анимирует свои свойства за заданный промежуток времени. Потомки не
// анимируются.
// https://api.flutter.dev/flutter/widgets/AnimatedContainer-class.html
class AnimatedContainerPractice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateAnimatedContainerPractice();
  }
}

class _StateAnimatedContainerPractice extends State<AnimatedContainerPractice> {
  Color _color = Colors.red;
  double _width = 100;
  double _height = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedContainer'),
      ),
      body: Column(
        children: <Widget>[
          FlatButton(
            child: Text('Change'),
            onPressed: () {
              setState(
                () {
                  _color = Color(Random().nextInt(4000000000));
                  _width = Random().nextDouble() * 200;
                  _height = Random().nextDouble() * 200;
                },
              );
            },
          ),
          AnimatedContainer(
            color: _color,
            duration: Duration(milliseconds: 300),
            width: _width,
            height: _height,
            child: Center(child: Container(
              color: Colors.black,
              width: 30,
              height: 30,
            ),),
          ),
        ],
      ),
    );
  }
}
