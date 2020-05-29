import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgetspractice/material/data_table.dart';

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
        title: Text('Painting and effects widgets'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildButton(
              'DataTable',
              () {
                _navigateTo(DataTablePractice());
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
