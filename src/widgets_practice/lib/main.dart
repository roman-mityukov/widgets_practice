import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:widgetspractice/constrained_box.dart';
import 'package:widgetspractice/container.dart';
import 'package:widgetspractice/inherited_widget.dart';
import 'package:widgetspractice/layout_builder.dart';
import 'package:widgetspractice/limited_box.dart';
import 'package:widgetspractice/unconstrained_box.dart';

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
              'Container',
              () {
                _navigateTo(ContainerPractice());
              },
            )
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
