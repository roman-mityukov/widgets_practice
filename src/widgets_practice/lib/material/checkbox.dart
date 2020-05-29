import 'package:flutter/material.dart';

// Если tristate == true, то может отображать три состояния - null, true, false
// если null, то показывает чёрточку
// https://api.flutter.dev/flutter/material/Checkbox-class.html
class CheckboxPractice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateCheckboxPractice();
  }
}

class _StateCheckboxPractice extends State<CheckboxPractice> {
  bool checkboxWithTristateValue;
  bool checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(16),
              color: getColor(checkboxValue),
              child: Checkbox(
                onChanged: (value) {
                  setState(() {
                    checkboxValue = value;
                  });
                },
                value: checkboxValue,
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              color: getColor(checkboxWithTristateValue),
              child: Checkbox(
                tristate: true,
                onChanged: (value) {
                  setState(() {
                    checkboxWithTristateValue = value;
                  });
                },
                value: checkboxWithTristateValue,
              ),
            )
          ],
        ),
      ),
    );
  }

  Color getColor(bool value) {
    if (value == null) return Colors.blue;

    return value ? Colors.green : Colors.red;
  }
}
