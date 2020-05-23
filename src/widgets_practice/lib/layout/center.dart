import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// Выравнивает потомка внутри себя по центру. Наследует от Align
// https://api.flutter.dev/flutter/widgets/Center-class.html
class CenterPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Flex(
        direction: Axis.vertical,
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints.tightFor(width: 100, height: 100),
            child: Container(
              color: Colors.black87,
              child: Center(
                child: Container(
                  width: 20,
                  height: 20,
                  color: Colors.red,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
