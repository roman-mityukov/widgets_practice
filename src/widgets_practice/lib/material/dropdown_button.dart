import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// Позволяет выбрать один вариант из нескольких
// https://api.flutter.dev/flutter/material/DropdownButton-class.html
class DropdownButtonPractice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateDropdownButtonPractice();
  }
}

class _StateDropdownButtonPractice extends State<DropdownButtonPractice> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DropdownButton'),
        elevation: 0,
      ),
      body: Center(
        child: DropdownButton<String>(
          value: dropdownValue,
          icon: Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Colors.deepPurple),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
          onChanged: (String newValue) {
            setState(() {
              dropdownValue = newValue;
            });
          },
          items: <String>['One', 'Two', 'Free', 'Four']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
