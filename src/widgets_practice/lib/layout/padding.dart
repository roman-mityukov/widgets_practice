import 'package:flutter/material.dart';

// Дает отступ потомку
// https://www.youtube.com/watch?v=oD5RtLhhubg&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=82&t=0s
// https://api.flutter.dev/flutter/widgets/Padding-class.html
class PaddingPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Padding'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            // Игнорируем направление текста
            padding: EdgeInsets.fromLTRB(24, 12, 12, 12),
            child: Text('Hello world'),
          ),
          Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                // Позволяет учитывать направление текста
                padding: EdgeInsetsDirectional.fromSTEB(24, 12, 12, 12),
                child: Text('Hello world'),
              ))
        ],
      ),
    );
  }
}
