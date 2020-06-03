import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


// https://flutter.dev/docs/cookbook/design/drawer
// https://api.flutter.dev/flutter/material/Drawer-class.html
// https://material.io/components/navigation-drawer
class DrawerPractice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateDrawerPractice();
  }
}

class _StateDrawerPractice extends State<DrawerPractice> {
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
