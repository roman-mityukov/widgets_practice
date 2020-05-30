import 'package:flutter/material.dart';

// Если onChanged равен null, то виджет неактивен
// https://api.flutter.dev/flutter/material/Switch-class.html
class SwitchPractice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateSwitchPractice();
  }
}

class _StateSwitchPractice extends State<SwitchPractice> {
  bool someValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch'),
      ),
      body: Center(
        child: Switch(
          value: someValue,
          onChanged: (value) {
            setState(() {
              someValue = value;
            });
          },
        ),
      ),
    );
  }
}
