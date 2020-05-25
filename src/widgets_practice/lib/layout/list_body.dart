import 'package:flutter/material.dart';

// Как ListView, но без скроллинга. Требует, чтобы его поместили в виджет,
// который умеет скроллить. Используется в SimpleDialog, PopupMenu
// https://api.flutter.dev/flutter/widgets/ListBody-class.html
class ListBodyPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final children = List.generate(
      30,
      (index) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        child: Container(
          color: Colors.green,
          child: Text(
            'Item $index',
            style: TextStyle(backgroundColor: Colors.deepOrange),
          ),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('ListBody'),
      ),
      body: SingleChildScrollView(
        child: ListBody(
          children: children,
        ),
      ),
    );
  }
}
