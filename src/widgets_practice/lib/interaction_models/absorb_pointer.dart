import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

// Поглощает события ввода, не давая потомкам реагировать на них
// https://api.flutter.dev/flutter/widgets/AbsorbPointer-class.html
class AbsorbPointerPractice extends StatelessWidget {
  final _logger = Logger('AbsorbPointerPractice');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AbsorbPointer'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              _logger.fine('onTap');
            },
            child: Container(
              color: Colors.blue.withAlpha(128),
            ),
          ),
          AbsorbPointer(
            absorbing: true,
            child: GestureDetector(
              onTap: () {
                _logger.fine('onTap');
              },
              child: Container(
                color: Colors.red.withAlpha(128),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
