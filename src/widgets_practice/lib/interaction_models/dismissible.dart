import 'package:flutter/material.dart';

// Виджет, который можно удалить из списка свайпом в направлении, которое
// указывается в свойстве direction
// https://api.flutter.dev/flutter/widgets/Dismissible-class.html
class DismissiblePractice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateDismissiblePractice();
  }
}

class _StateDismissiblePractice extends State<DismissiblePractice> {
  List<String> items;

  @override
  void initState() {
    super.initState();
    items = List.generate(30, (index) => 'Item $index');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dismissible'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Dismissible(
            key: ValueKey(items[index]),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              child: Text(
                items[index],
                style: TextStyle(backgroundColor: Colors.deepOrange),
              ),
            ),
            onDismissed: (direction) {
              setState(() {
                items.removeAt(index);
              });
            },
            background: Container(
              color: Colors.red,
            ),
            secondaryBackground: Container(
              color: Colors.blue,
            ),
          );
        },
        itemCount: items.length,
      ),
    );
  }
}
