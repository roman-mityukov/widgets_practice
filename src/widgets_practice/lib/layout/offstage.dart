import 'package:flutter/material.dart';

// Управляет видимость потомка, при этом сохраняет его состояние при изменении
// видимости (в отличие от Visibility)
// https://api.flutter.dev/flutter/widgets/Offstage-class.html
class OffstagePractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Offstage'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
          Offstage(
            offstage: false,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
