import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// Таблица
// https://api.flutter.dev/flutter/widgets/Table-class.html
class TablePractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table'),
        elevation: 0,
      ),
      body: Table(
        border: TableBorder.all(),
        children: const <TableRow>[
          TableRow(
            children: <Widget>[
              Text('AAAAAA'),
              Text('B'),
              Text('C'),
            ],
          ),
          TableRow(
            children: <Widget>[
              Text('D'),
              Text('EEE'),
              Text('F'),
            ],
          ),
          TableRow(
            children: <Widget>[
              Text('G'),
              Text('H'),
              Text('III'),
            ],
          ),
        ],
      ),
    );
  }
}
