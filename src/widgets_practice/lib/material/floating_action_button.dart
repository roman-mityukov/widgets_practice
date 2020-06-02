import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Чтобы был notch для docked FAB, нужно использовать BottomAppBar c
// shape: CircularNotchedRectangle() и цвет нужно указывать у самого
// BottomAppBar
// https://api.flutter.dev/flutter/material/FloatingActionButton-class.html
class FloatingActionButtonPractice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateFloatingActionButtonPractice();
  }
}

class _StateFloatingActionButtonPractice
    extends State<FloatingActionButtonPractice> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 4,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 48,
        ),
        color: Colors.blue,
      ),
      floatingActionButton: SizedBox(
        width: 48,
        height: 48,
        child: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          child: Icon(Icons.navigation),
          backgroundColor: Colors.green,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
