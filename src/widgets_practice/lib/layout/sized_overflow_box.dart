import 'package:flutter/material.dart';

// Переопределяет ограничения родителя таким образом, что потомкам можно
// выходить за пределы родителя, при этом позволяет, в отличие от OverflowBox
// определять свой размер
// https://api.flutter.dev/flutter/widgets/SizedOverflowBox-class.html
class SizedOverflowBoxPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OverflowBox'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.green,
          child: Align(
            alignment: Alignment.bottomRight,
            child: SizedOverflowBox(
              alignment: Alignment.topLeft,
              size: Size(10, 20),
              child: Container(
                width: 100,
                height: 50,
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
