import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Базовый лэйаут экрана с material design
// Может содержать и показывать (смотри соответствующие примеры)
// - AppBar
// - Drawer
// - BottomAppBar
// - BottomNavigationBar
// - FloatingActionBar
// - BottomSheet
// - Snackbar
class ScaffoldPractice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateScaffoldPractice();
  }
}

class _StateScaffoldPractice extends State<ScaffoldPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer'),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          color: Colors.white,
        ),
      ),
    );
  }
}
