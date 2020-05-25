import 'package:flutter/material.dart';

// Иконка, которая отрисовывет глиф из шрифта, указанного в IconData. Виджет
// предполагает, что отрисовываемые иконки квадратные, другие может отрисовывать
// некорректно.
// https://api.flutter.dev/flutter/widgets/Icon-class.html
class IconPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icon'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const <Widget>[
          Icon(
            Icons.favorite,
            color: Colors.pink,
            size: 24.0,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
          Icon(
            Icons.audiotrack,
            color: Colors.green,
            size: 30.0,
          ),
          Icon(
            Icons.beach_access,
            color: Colors.blue,
            size: 36.0,
          ),
        ],
      ),
    );
  }
}
