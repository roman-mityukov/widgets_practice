import 'package:flutter/material.dart';

// Дает информацию о устройстве и настройках. Также позволяет удалить padding
// путем добавления в дерево нового MediaQuery (копию корневого) без padding
// https://api.flutter.dev/flutter/widgets/MediaQuery-class.html
class MediaQueryPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('MediaQuery'),
      ),
      body: Text(mediaQuery.toString()),
    );
  }
}
