import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgetspractice/material/alert_dialog.dart';
import 'package:widgetspractice/material/appbar.dart';
import 'package:widgetspractice/material/bottom_navigation_bar.dart';
import 'package:widgetspractice/material/button_bar.dart';
import 'package:widgetspractice/material/card.dart';
import 'package:widgetspractice/material/checkbox.dart';
import 'package:widgetspractice/material/chip.dart';
import 'package:widgetspractice/material/circularprogressindicator.dart';
import 'package:widgetspractice/material/data_table.dart';
import 'package:widgetspractice/material/divider.dart';
import 'package:widgetspractice/material/dropdown_button.dart';
import 'package:widgetspractice/material/expansion_panel_list.dart';
import 'package:widgetspractice/material/flat_button.dart';
import 'package:widgetspractice/material/icon_button.dart';
import 'package:widgetspractice/material/list_tile.dart';
import 'package:widgetspractice/material/outline_button.dart';
import 'package:widgetspractice/material/popup_menu_button.dart';
import 'package:widgetspractice/material/radio.dart';
import 'package:widgetspractice/material/raised_button.dart';
import 'package:widgetspractice/material/simple_dialog.dart';
import 'package:widgetspractice/material/slider.dart';
import 'package:widgetspractice/material/snackbar.dart';
import 'package:widgetspractice/material/stepper.dart';
import 'package:widgetspractice/material/switch.dart';
import 'package:widgetspractice/material/tabbar_and_tabbarview.dart';
import 'package:widgetspractice/material/tooltip.dart';

import 'linear_progress_indicator.dart';

class MaterialWidgets extends StatelessWidget {
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
        title: Text('Material widgets'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildButton(
              'AlertDialog',
              () {
                _navigateTo(AlertDialogPractice());
              },
            ),
            _buildButton(
              'AppBar',
              () {
                _navigateTo(AppBarPractice());
              },
            ),
            _buildButton(
              'BottomNavigationBar',
              () {
                _navigateTo(BottomNavigationBarPractice());
              },
            ),
            _buildButton(
              'ButtonBar',
              () {
                _navigateTo(ButtonBarPractice());
              },
            ),
            _buildButton(
              'Card',
              () {
                _navigateTo(CardPractice());
              },
            ),
            _buildButton(
              'Checkbox',
              () {
                _navigateTo(CheckboxPractice());
              },
            ),
            _buildButton(
              'Chip',
              () {
                _navigateTo(ChipPractice());
              },
            ),
            _buildButton(
              'CircularProgressIndicator',
              () {
                _navigateTo(CircularProgressIndicatorPractice());
              },
            ),
            _buildButton(
              'DataTable',
              () {
                _navigateTo(DataTablePractice());
              },
            ),
            _buildButton(
              'Divider',
              () {
                _navigateTo(DividerPractice());
              },
            ),
            _buildButton(
              'DropdownButton',
              () {
                _navigateTo(DropdownButtonPractice());
              },
            ),
            _buildButton(
              'ExpansionPanelList',
              () {
                _navigateTo(ExpansionPanelListPractice());
              },
            ),
            _buildButton(
              'FlatButton',
              () {
                _navigateTo(FlatButtonPractice());
              },
            ),
            _buildButton(
              'IconButton',
              () {
                _navigateTo(IconButtonPractice());
              },
            ),
            _buildButton(
              'LinearProgressIndicator',
              () {
                _navigateTo(LinearProgressIndicatorPractice());
              },
            ),
            _buildButton(
              'ListTile',
              () {
                _navigateTo(ListTilePractice());
              },
            ),
            _buildButton(
              'OutlineButton',
              () {
                _navigateTo(OutlineButtonPractice());
              },
            ),
            _buildButton(
              'PopupMenuButton',
              () {
                _navigateTo(PopupMenuButtonPractice());
              },
            ),
            _buildButton(
              'Radio',
              () {
                _navigateTo(RadioPractice());
              },
            ),
            _buildButton(
              'RaisedButton',
              () {
                _navigateTo(RaisedButtonPractice());
              },
            ),
            _buildButton(
              'SimpleDialog',
              () {
                _navigateTo(SimpleDialogPractice());
              },
            ),
            _buildButton(
              'Slider',
              () {
                _navigateTo(SliderPractice());
              },
            ),
            _buildButton(
              'SnackBar',
              () {
                _navigateTo(SnackBarPractice());
              },
            ),
            _buildButton(
              'Stepper',
              () {
                _navigateTo(StepperPractice());
              },
            ),
            _buildButton(
              'Switch',
              () {
                _navigateTo(SwitchPractice());
              },
            ),
            _buildButton(
              'TabBar and TabBarView',
              () {
                _navigateTo(TabBarPractice());
              },
            ),
            _buildButton(
              'Tooltip',
              () {
                _navigateTo(TooltipPractice());
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
