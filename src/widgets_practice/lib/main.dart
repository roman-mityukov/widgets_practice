import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:widgetspractice/layout/align.dart';
import 'package:widgetspractice/layout/aspect_ratio.dart';
import 'package:widgetspractice/layout/center.dart';
import 'package:widgetspractice/layout/column.dart';
import 'package:widgetspractice/layout/constrained_box.dart';
import 'package:widgetspractice/layout/expanded.dart';
import 'package:widgetspractice/layout/fitted_box.dart';
import 'package:widgetspractice/layout/flex.dart';
import 'package:widgetspractice/layout/flexible.dart';
import 'package:widgetspractice/layout/fractionally_sized_box.dart';
import 'package:widgetspractice/layout/inherited_widget.dart';
import 'package:widgetspractice/layout/layout_builder.dart';
import 'package:widgetspractice/layout/layout_widgets.dart';
import 'package:widgetspractice/layout/limited_box.dart';
import 'package:widgetspractice/layout/row.dart';
import 'package:widgetspractice/layout/spacer.dart';
import 'package:widgetspractice/layout/unconstrained_box.dart';

import 'layout/container.dart';
import 'layout/intrinsic_height.dart';
import 'layout/intrinsic_width.dart';

void main() {
  Logger.root.level = Level.ALL;

  Logger.root.onRecord.listen(
    (record) {
      if (record.error != null) {
        debugPrint('${record.level.name}: ${record.time}: ${record.loggerName}:'
            ' ${record.message}: ${record.error}');
      } else {
        debugPrint('${record.level.name}: ${record.time}: ${record.loggerName}:'
            ' ${record.message}');
      }
    },
  );

  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widgets'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildButton(
              'LayoutWidgets',
              () {
                _navigateTo(LayoutWidgets());
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

  void _navigateTo(Widget widget) {
    Navigator.of(context).push(
      CupertinoPageRoute(
        builder: (context) {
          return widget;
        },
      ),
    );
  }
}
