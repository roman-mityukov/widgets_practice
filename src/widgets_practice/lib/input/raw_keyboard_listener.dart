import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

class RawKeyboardListenerPractice extends StatelessWidget {
  final _logger = Logger('RawKeyboardListenerPractice');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RawKeyboardListener'),
      ),
      body: RawKeyboardListener(
        focusNode: FocusNode(),
        child: SizedBox.expand(
          child: Container(
            color: Colors.green,
          ),
        ),
        onKey: (event) {
          _logger.fine(event);
        },
      ),
    );
  }
}
