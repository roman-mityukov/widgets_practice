import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'assets_bundle.dart';
import 'icon.dart';
import 'image.dart';

class AssetsImagesIconWidgets extends StatelessWidget {
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
        title: Text('Widgets'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildButton(
              'AssetsBundle',
              () {
                _navigateTo(AssetsBundlePractice());
              },
            ),
            _buildButton(
              'Icon',
              () {
                _navigateTo(IconPractice());
              },
            ),
            _buildButton(
              'Image',
              () {
                _navigateTo(ImagePractice());
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
