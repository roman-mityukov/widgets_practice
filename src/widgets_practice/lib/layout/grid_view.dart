import 'package:flutter/material.dart';

// 2D список виджетов, который можно скроллить
// https://api.flutter.dev/flutter/widgets/GridView-class.html
class GridViewPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView'),
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
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
