import 'package:flutter/material.dart';

// leading, title, actions, bottom. flexibleSpace работает только если родитель appBar
// растягивает его. flexibleSpace занимает всю высоту appBar и разполагается
// сзади всех его потомков
// Brightness меняет цвет текста статусбара. Brightness.light - текст черный,
// Brightness.dark - текст белый
// https://api.flutter.dev/flutter/material/AppBar-class.html
class AppBarPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        title: Text('AppBar' * 5),
        leading: IconButton(
          icon: const Icon(Icons.ac_unit),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Next page',
            onPressed: () {},
          ),
        ],
        flexibleSpace: Container(
          width: 100,
          height: 300,
          color: Colors.green,
        ),
        bottom: PreferredSize(
          child: Text('bottom with preferred size'),
          preferredSize: Size(200, 24),
        ),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Container(
            width: 100,
            height: 3000,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
