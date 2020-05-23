import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:widgetspractice/align.dart';
import 'package:widgetspractice/aspect_ratio.dart';
import 'package:widgetspractice/center.dart';
import 'package:widgetspractice/column.dart';
import 'package:widgetspractice/constrained_box.dart';
import 'package:widgetspractice/fitted_box.dart';
import 'package:widgetspractice/flex.dart';
import 'package:widgetspractice/fractionally_sized_box.dart';
import 'package:widgetspractice/inherited_widget.dart';
import 'package:widgetspractice/layout_builder.dart';
import 'package:widgetspractice/limited_box.dart';
import 'package:widgetspractice/row.dart';
import 'package:widgetspractice/unconstrained_box.dart';

import 'container.dart';

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
              'Align',
              () {
                _navigateTo(AlignPractice());
              },
            ),
            _buildButton(
              'AspectRatio',
              () {
                _navigateTo(AspectRatioPractice());
              },
            ),
            _buildButton(
              'FractionallySizedBox',
              () {
                _navigateTo(FractionallySizedBoxPractice());
              },
            ),
            _buildButton(
              'Center',
              () {
                _navigateTo(CenterPractice());
              },
            ),
            _buildButton(
              'Container',
              () {
                _navigateTo(ContainerPractice());
              },
            ),
            _buildButton(
              'LayoutBuilder',
              () {
                _navigateTo(LayoutBuilderPractice());
              },
            ),
            _buildButton(
              'InheritedWidget',
              () {
                _navigateTo(InheritedWidgetPractice());
              },
            ),
            _buildButton(
              'ConstrainedBox',
              () {
                _navigateTo(ConstrainedBoxPractice());
              },
            ),
            _buildButton(
              'UnconstrainedBox',
              () {
                _navigateTo(UnconstrainedBoxPractice());
              },
            ),
            _buildButton(
              'LimitedBox',
              () {
                _navigateTo(LimitedBoxPractice());
              },
            ),
            _buildButton(
              'FittedBox',
              () {
                _navigateTo(FittedBoxPractice());
              },
            ),
            _buildButton(
              'Flex',
              () {
                _navigateTo(FlexPractice());
              },
            ),
            _buildButton(
              'Column',
              () {
                _navigateTo(ColumnPractice());
              },
            ),
            _buildButton(
              'Row',
              () {
                _navigateTo(RowPractice());
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
