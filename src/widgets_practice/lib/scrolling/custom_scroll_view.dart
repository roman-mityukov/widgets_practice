import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Кастомное ScrollView, которое использует slivers
// Виджеты, которые передаются в slivers должны уметь возвращать RenderSliver
// https://api.flutter.dev/flutter/rendering/RenderSliver-class.html
// https://api.flutter.dev/flutter/widgets/CustomScrollView-class.html
// https://api.flutter.dev/flutter/material/SliverAppBar-class.html
// https://api.flutter.dev/flutter/widgets/SliverList-class.html
// https://api.flutter.dev/flutter/widgets/SliverGrid-class.html
class CustomScrollViewPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('CustomScrollView'),
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
            ),
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100 * (index % 9)],
                  child: Text('Grid Item $index'),
                );
              },
              childCount: 20,
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.lightBlue[100 * (index % 9)],
                  child: Text('List Item $index'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
