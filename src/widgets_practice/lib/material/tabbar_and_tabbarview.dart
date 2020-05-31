import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// TabBar - табы, которые обычно вставляются в AppBar.bottom
// TabBarView содержить в себе PageView для потомков
// https://api.flutter.dev/flutter/material/TabBar-class.html
// https://api.flutter.dev/flutter/material/TabBarView-class.html
class TabBarPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
          title: Text('TabBar'),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
