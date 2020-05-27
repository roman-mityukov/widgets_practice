import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

// Распознает жесты
// https://api.flutter.dev/flutter/widgets/GestureDetector-class.html
class GestureDetectorPractice extends StatelessWidget {
  final _logger = Logger('GestureDetectorPractice');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GestureDetector'),
      ),
      body: GestureDetector(
//        onHorizontalDragCancel: () => _logger.fine('onHorizontalDragCancel'),
//        onHorizontalDragDown: (details) =>
//            _logger.fine('onHorizontalDragDown $details'),
//        onHorizontalDragEnd: (details) =>
//            _logger.fine('onHorizontalDragEnd $details'),
//        onHorizontalDragStart: (details) =>
//            _logger.fine('onHorizontalDragStart $details'),
//        onHorizontalDragUpdate: (details) =>
//            _logger.fine('onHorizontalDragUpdate $details'),
        onLongPress: () => _logger.fine('onLongPress'),
        onLongPressUp: () => _logger.fine('onLongPressUp'),
        onLongPressMoveUpdate: (details) =>
            _logger.fine('onLongPressMoveUpdate $details'),
        onLongPressStart: (details) =>
            _logger.fine('onLongPressStart $details'),
        onLongPressEnd: (details) => _logger.fine('onLongPressEnd $details'),
// pan и vertical+horizontal drag взаимно исключают друг друга
        onPanCancel: () => _logger.fine('onPanCancel'),
        onPanDown: (details) => _logger.fine('onPanDown $details'),
        onPanEnd: (details) => _logger.fine('onPanEnd $details'),
        onPanStart: (details) => _logger.fine('onPanStart $details'),
        onPanUpdate: (details) => _logger.fine('onPanUpdate $details'),
        onTap: () => _logger.fine('onTap'),
        onTapCancel: () => _logger.fine('onTapCancel'),
        onTapDown: (details) => _logger.fine('onTapCancel $details'),
        onTapUp: (details) => _logger.fine('onTapUp $details'),
        onDoubleTap: () => _logger.fine('onDoubleTap'),
// scale это суперсет pan
//        onScaleEnd: (details) => _logger.fine('onScaleEnd $details'),
//        onScaleStart: (details) => _logger.fine('onScaleStart $details'),
//        onScaleUpdate: (details) => _logger.fine('onScaleUpdate $details'),
        onSecondaryTapCancel: () => _logger.fine('onSecondaryTapCancel'),
        onSecondaryTapDown: (details) =>
            _logger.fine('onSecondaryTapDown $details'),
        onSecondaryTapUp: (details) =>
            _logger.fine('onSecondaryTapUp $details'),
//        onVerticalDragCancel: () => _logger.fine('onVerticalDragCancel'),
//        onVerticalDragDown: (details) =>
//            _logger.fine('onVerticalDragDown $details'),
//        onVerticalDragEnd: (details) =>
//            _logger.fine('onVerticalDragEnd $details'),
//        onVerticalDragStart: (details) =>
//            _logger.fine('onVerticalDragStart $details'),
//        onVerticalDragUpdate: (details) =>
//            _logger.fine('onVerticalDragUpdate $details'),
        onForcePressEnd: (details) => _logger.fine('onForcePressEnd $details'),
        onForcePressPeak: (details) =>
            _logger.fine('onForcePressPeak $details'),
        onForcePressStart: (details) =>
            _logger.fine('onForcePressStart $details'),
        onForcePressUpdate: (details) =>
            _logger.fine('onForcePressUpdate $details'),
        child: Container(
          color: Colors.blue,
        ),
      ),
    );
  }
}
