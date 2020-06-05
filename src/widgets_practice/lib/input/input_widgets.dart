import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgetspractice/input/form_and_form_field.dart';
import 'package:widgetspractice/input/raw_keyboard_listener.dart';

class InputWidgets extends StatelessWidget {
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
        title: Text('Input widgets'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildButton(
              'Form',
              () {
                _navigateTo(FormPractice());
              },
            ),
            _buildButton(
              'RawKeyboardListener',
                  () {
                _navigateTo(RawKeyboardListenerPractice());
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
