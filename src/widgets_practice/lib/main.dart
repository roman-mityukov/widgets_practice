import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:widgetspractice/animations/animations_widgets.dart';
import 'package:widgetspractice/assets_images_icon/assets_images_icon_widgets.dart';
import 'package:widgetspractice/async/async_widgets.dart';
import 'package:widgetspractice/input/input_widgets.dart';
import 'package:widgetspractice/interaction_models/interaction_models_widgets.dart';
import 'package:widgetspractice/layout/layout_widgets.dart';
import 'package:widgetspractice/material/material_widgets.dart';
import 'package:widgetspractice/painting_and_effects/painting_and_effects_widgets.dart';
import 'package:widgetspractice/scrolling/scrolling_widgets.dart';
import 'package:widgetspractice/semantics/semantics_widgets.dart';
import 'package:widgetspractice/styling/styling_widgets.dart';
import 'package:widgetspractice/text/text_widgets.dart';

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

  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
      //showSemanticsDebugger: true,
    ),
  );
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
              'Animations',
              () {
                _navigateTo(AnimationsWidgets());
              },
            ),
            _buildButton(
              'AssetsImagesIcon',
              () {
                _navigateTo(AssetsImagesIconWidgets());
              },
            ),
            _buildButton(
              'Async',
              () {
                _navigateTo(AsyncWidgets());
              },
            ),
            _buildButton(
              'InteractionModels',
              () {
                _navigateTo(InteractionModelsWidgets());
              },
            ),
            _buildButton(
              'Input',
              () {
                _navigateTo(InputWidgets());
              },
            ),
            _buildButton(
              'Layout',
              () {
                _navigateTo(LayoutWidgets());
              },
            ),
            _buildButton(
              'Material',
              () {
                _navigateTo(MaterialWidgets());
              },
            ),
            _buildButton(
              'PaintingAndEffects',
              () {
                _navigateTo(PaintingAndEffectsWidgets());
              },
            ),
            _buildButton(
              'Scrolling',
              () {
                _navigateTo(ScrollingWidgets());
              },
            ),
            _buildButton(
              'Semantics',
              () {
                _navigateTo(SemanticsWidgets());
              },
            ),
            _buildButton(
              'Styling',
              () {
                _navigateTo(StylingWidgets());
              },
            ),
            _buildButton(
              'Text',
              () {
                _navigateTo(TextWidgets());
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
