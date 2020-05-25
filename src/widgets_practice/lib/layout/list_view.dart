import 'package:flutter/material.dart';

// Список виджетов, который можно скроллить
// - дает потомкам горизонтальное ограничение (в отличие от Column например)
// https://api.flutter.dev/flutter/widgets/ListView-class.html
class ListViewPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            child: Container(
              color: Colors.green,
              child: Text(
                'Item $index',
                style: TextStyle(backgroundColor: Colors.deepOrange),
              ),
            ),
          );
        },
        itemCount: 30,
      ),
    );
  }
}
