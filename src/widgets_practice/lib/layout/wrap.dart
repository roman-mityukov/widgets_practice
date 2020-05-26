import 'dart:math';

import 'package:flutter/material.dart';

// Отображает потомков вертикально или горизонтально, в отличие от Row и
// Column если не хватает места для следующего потомка, то переносит его на
// новую строку/столбец
// https://api.flutter.dev/flutter/widgets/Wrap-class.html
class WrapPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final children = List.generate(
      30,
      (index) => Container(
        color: Color(Random().nextInt(4000000000)),
        padding: EdgeInsets.all(8),
        child: Text(
          'Item $index',
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('ListBody'),
      ),
      body: Wrap(
        children: children,
      ),
    );
  }
}
