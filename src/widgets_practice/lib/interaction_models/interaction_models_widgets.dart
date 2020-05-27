import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgetspractice/interaction_models/absorb_pointer.dart';
import 'package:widgetspractice/interaction_models/dismissible.dart';
import 'package:widgetspractice/interaction_models/gesture_detector.dart';
import 'package:widgetspractice/interaction_models/ignore_pointer.dart';

class InteractionModelsWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Function(Widget widget) _navigateTo = (Widget widget) {
      Navigator.of(context).push(
        CupertinoPageRoute(
          builder: (context) {
            return widget;
          },
        ),
      );
    };

    return Scaffold(
      appBar: AppBar(
        title: Text('Interaction models widgets'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildButton(
              'AbsorbPointer',
              () {
                _navigateTo(AbsorbPointerPractice());
              },
            ),
            _buildButton(
              'IgnorePointer',
              () {
                _navigateTo(IgnorePointerPractice());
              },
            ),
            _buildButton(
              'GestureDetector',
              () {
                _navigateTo(GestureDetectorPractice());
              },
            ),
            _buildButton(
              'Dismissible',
              () {
                _navigateTo(DismissiblePractice());
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(String title, Function action) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: FlatButton(
        color: Colors.green,
        child: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: action,
      ),
    );
  }
}
