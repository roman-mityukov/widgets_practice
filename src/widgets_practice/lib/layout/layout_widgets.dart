import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgetspractice/layout/baseline.dart';
import 'package:widgetspractice/layout/list_view.dart';
import 'package:widgetspractice/layout/overflow_box.dart';
import 'package:widgetspractice/layout/padding.dart';
import 'package:widgetspractice/layout/sized_box.dart';
import 'package:widgetspractice/layout/sized_overflow_box.dart';
import 'package:widgetspractice/layout/stack.dart';

import 'align.dart';
import 'aspect_ratio.dart';
import 'center.dart';
import 'column.dart';
import 'constrained_box.dart';
import 'container.dart';
import 'expanded.dart';
import 'fitted_box.dart';
import 'flex.dart';
import 'flexible.dart';
import 'fractionally_sized_box.dart';
import 'indexed_stack.dart';
import 'inherited_widget.dart';
import 'intrinsic_height.dart';
import 'intrinsic_width.dart';
import 'layout_builder.dart';
import 'limited_box.dart';
import 'offstage.dart';
import 'row.dart';
import 'spacer.dart';
import 'unconstrained_box.dart';

class LayoutWidgets extends StatelessWidget {
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
              'Baseline',
              () {
                _navigateTo(BaseLinePractice());
              },
            ),
            _buildButton(
              'Center',
              () {
                _navigateTo(CenterPractice());
              },
            ),
            _buildButton(
              'Column',
              () {
                _navigateTo(ColumnPractice());
              },
            ),
            _buildButton(
              'ConstrainedBox',
              () {
                _navigateTo(ConstrainedBoxPractice());
              },
            ),
            _buildButton(
              'Container',
              () {
                _navigateTo(ContainerPractice());
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
              'Flexible',
              () {
                _navigateTo(FlexiblePractice());
              },
            ),
            _buildButton(
              'FractionallySizedBox',
              () {
                _navigateTo(FractionallySizedBoxPractice());
              },
            ),
            _buildButton(
              'Expanded',
              () {
                _navigateTo(ExpandedPractice());
              },
            ),
            _buildButton(
              'IndexedStack',
              () {
                _navigateTo(IndexedStackPractice());
              },
            ),
            _buildButton(
              'InheritedWidget',
              () {
                _navigateTo(InheritedWidgetPractice());
              },
            ),
            _buildButton(
              'IntrinsicWidth',
              () {
                _navigateTo(IntrinsicWidthPractice());
              },
            ),
            _buildButton(
              'IntrinsicHeight',
              () {
                _navigateTo(IntrinsicHeightPractice());
              },
            ),
            _buildButton(
              'LayoutBuilder',
              () {
                _navigateTo(LayoutBuilderPractice());
              },
            ),
            _buildButton(
              'LimitedBox',
              () {
                _navigateTo(LimitedBoxPractice());
              },
            ),
            _buildButton(
              'ListView',
              () {
                _navigateTo(ListViewPractice());
              },
            ),
            _buildButton(
              'Offstage',
              () {
                _navigateTo(OffstagePractice());
              },
            ),
            _buildButton(
              'OverflowBox',
              () {
                _navigateTo(OverflowBoxPractice());
              },
            ),
            _buildButton(
              'Padding',
              () {
                _navigateTo(PaddingPractice());
              },
            ),
            _buildButton(
              'Row',
              () {
                _navigateTo(RowPractice());
              },
            ),
            _buildButton(
              'SizedBox',
              () {
                _navigateTo(SizedBoxPractice());
              },
            ),
            _buildButton(
              'Spacer',
              () {
                _navigateTo(SpacerPractice());
              },
            ),
            _buildButton(
              'Stack',
              () {
                _navigateTo(StackPractice());
              },
            ),
            _buildButton(
              'SizedOverflowBox',
              () {
                _navigateTo(SizedOverflowBoxPractice());
              },
            ),
            _buildButton(
              'UnconstrainedBox',
              () {
                _navigateTo(UnconstrainedBoxPractice());
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
