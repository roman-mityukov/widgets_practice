import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

// Виджет, который можно перетащить на DragTarget только при longpress
// в отличие от обычного Draggable
// https://api.flutter.dev/flutter/widgets/LongPressDraggable-class.html
class LongPressDraggablePractice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateLongPressDraggablePractice();
  }
}

class _StateLongPressDraggablePractice extends State<LongPressDraggablePractice> {
  final _logger = Logger('_StateDraggablePractice');
  Color _selectedColor;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LongPressDraggable'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: LongPressDraggable<Color>(
                data: Colors.blue,
                feedback: Container(
                  width: 48,
                  height: 48,
                  color: Colors.blue,
                ),
                childWhenDragging: Container(
                  width: 48,
                  height: 48,
                  color: Colors.black,
                ),
                child: Container(
                  width: 48,
                  height: 48,
                  color: _selectedColor != null ? Colors.black : Colors.blue,
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: DragTarget<Color>(
                onWillAccept: (value) => value != Colors.red,
                onAccept: (value) {
                  _logger.fine('onAccept value $value');
                  setState(() {
                    _selectedColor = value;
                  });
                },
                onLeave: (value) {
                  _logger.fine('onLeave value $value');
                },
                builder: (context, candidates, rejects) {
                  if (candidates.length > 0) {
                    return Container(
                      width: 48,
                      height: 48,
                      color: candidates[0],
                    );
                  } else if (_selectedColor != null) {
                    return Container(
                      width: 48,
                      height: 48,
                      color: _selectedColor,
                    );
                  } else {
                    return Container(
                      width: 48,
                      height: 48,
                      color: Colors.black,
                    );
                  }
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
