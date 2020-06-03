import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgetspractice/scrolling/custom_scroll_view.dart';
import 'package:widgetspractice/scrolling/page_view.dart';
import 'package:widgetspractice/scrolling/refresh_indicator.dart';
import 'package:widgetspractice/scrolling/scrollbar.dart';
import 'package:widgetspractice/scrolling/single_child_scroll_view.dart';

class ScrollingWidgets extends StatelessWidget {
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
        title: Text('Scrolling widgets'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildButton(
              'CustomScrollView',
              () {
                _navigateTo(CustomScrollViewPractice());
              },
            ),
            _buildButton(
              'SingleChildScrollView',
              () {
                _navigateTo(SingleChildScrollViewPractice());
              },
            ),
            _buildButton(
              'Scrollbar',
              () {
                _navigateTo(ScrollbarPractice());
              },
            ),
            _buildButton(
              'PageView',
              () {
                _navigateTo(PageViewPractice());
              },
            ),
            _buildButton(
              'RefreshIndicator',
              () {
                _navigateTo(RefreshIndicatorPractice());
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
