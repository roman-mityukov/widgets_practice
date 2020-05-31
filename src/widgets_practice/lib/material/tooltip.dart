import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// Есть также у некоторых виджетов в конструкторе (IconButton например)
// https://api.flutter.dev/flutter/material/Tooltip-class.html
class TooltipPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tooltip'),
        elevation: 0,
      ),
      body: Center(
        child: Tooltip(message: 'repeat', child: Icon(Icons.repeat),),
      ),
    );
  }
}
