import 'package:flutter/material.dart';

// Дает потомку BoxConstraints.tightFor(width: width, height: height)
// https://api.flutter.dev/flutter/widgets/SizedBox-class.html
class SizedBoxPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Padding'),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            width: 100,
            height: 100,
            child: Container(
              color: Colors.red,
            ),
          ),
          Expanded(
            // дает ограничения double.infinity
            child: SizedBox.expand(
              child: Container(
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
