import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgetspractice/painting_and_effects/backdrop_filter.dart';
import 'package:widgetspractice/painting_and_effects/clip_oval.dart';
import 'package:widgetspractice/painting_and_effects/clip_path.dart';
import 'package:widgetspractice/painting_and_effects/clip_rect.dart';
import 'package:widgetspractice/painting_and_effects/decorated_box.dart';
import 'package:widgetspractice/painting_and_effects/opacity.dart';

class PaintingAndEffectsWidgets extends StatelessWidget {
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
              'Opacity',
              () {
                _navigateTo(OpacityPractice());
              },
            ),
            _buildButton(
              'BackdropFilter&ImageFiltered',
              () {
                _navigateTo(BackdropFilterAndImageFilteredPractice());
              },
            ),
            _buildButton(
              'ClipRect',
              () {
                _navigateTo(ClipRectPractice());
              },
            ),
            _buildButton(
              'ClipOval',
              () {
                _navigateTo(ClipOvalPractice());
              },
            ),
            _buildButton(
              'ClipPath',
              () {
                _navigateTo(ClipPathPractice());
              },
            ),
            _buildButton(
              'DecoratedBox',
              () {
                _navigateTo(DecoratedBoxPractice());
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
