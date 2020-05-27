import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

// Игнорирует события ввода, не давая потомкам реагировать на них.
// Но в отличие от AbsorbPointer пропускает события ввода для виджетов ниже
// https://api.flutter.dev/flutter/widgets/IgnorePointer-class.html
class IgnorePointerPractice extends StatelessWidget {
  final _logger = Logger('IgnorePointerPractice');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IgnorePointer'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              _logger.fine('onTap blue');
            },
            child: Container(
              color: Colors.blue.withAlpha(128),
            ),
          ),
          IgnorePointer(
            ignoring: true,
            child: GestureDetector(
              onTap: () {
                _logger.fine('onTap red');
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
