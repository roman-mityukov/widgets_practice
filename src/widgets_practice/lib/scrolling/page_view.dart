import 'package:flutter/material.dart';

// Виджет, который скроллит потомков, каждому потомку передаются expanded
// ограничения
// https://api.flutter.dev/flutter/widgets/PageView-class.html
class PageViewPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageView'),
      ),
      body: PageView(
        controller: PageController(viewportFraction: 0.9),
        children: <Widget>[
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
