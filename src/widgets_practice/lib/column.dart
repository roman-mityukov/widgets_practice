import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// Показывает потомков в вертикальном одномерном массиве
// https://api.flutter.dev/flutter/widgets/Column-class.html
class ColumnPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Columnt'),),
      body: Row(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text('start'),
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('center'),
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text('end'),
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('space\nbetween'),
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text('space\naround'),
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('space\nevenly'),
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
            ],
          )
        ],
      ),
    );
  }
}
