import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgetspractice/animations/animated_builder.dart';
import 'package:widgetspractice/animations/animated_container.dart';
import 'package:widgetspractice/animations/animated_cross_fade.dart';
import 'package:widgetspractice/animations/animated_default_text_style.dart';
import 'package:widgetspractice/animations/animated_opacity.dart';

class AnimationsWidgets extends StatelessWidget {
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
        title: Text('Animations widgets'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildButton(
              'AnimatedBuilder',
              () {
                _navigateTo(AnimatedBuilderPractice());
              },
            ),
            _buildButton(
              'AnimatedContainer',
              () {
                _navigateTo(AnimatedContainerPractice());
              },
            ),
            _buildButton(
              'AnimatedDefaultTextStyle',
              () {
                _navigateTo(AnimatedDefaultTextStylePractice());
              },
            ),
            _buildButton(
              'AnimatedCrossFade',
              () {
                _navigateTo(AnimatedCrossFadePractice());
              },
            ),
            _buildButton(
              'AnimatedOpacity',
              () {
                _navigateTo(AnimatedOpacityPractice());
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
