import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Обычно используется вместе с Scaffold.bottomNavigationBar.
// BottomNavigationBarType.fixed - меньше четырех элементов (тогда все вместе с
// иконками и названиями), BottomNavigationType.shifting - больше трех (с
// названием только выбранный).
// У выбранного BottomNavigationBarItem можно указать виджет для выбранного
// состояния
// https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html
class BottomNavigationBarPractice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateBottomNavigationBarPractice();
  }
}

class _StateBottomNavigationBarPractice
    extends State<BottomNavigationBarPractice> {
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
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Business'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('School'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
