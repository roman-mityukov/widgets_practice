import 'package:flutter/material.dart';

// Переопределяет ограничения родителя таким образом, что потомкам можно
// выходить за пределы родителя
// https://api.flutter.dev/flutter/widgets/OverflowBox-class.html
class OverflowBoxPractice extends StatelessWidget {
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
            child: SizedBox(
              width: 10,
              height: 20,
              child: OverflowBox(
                maxWidth: 100,
                maxHeight: 50,
                child: Container(
                  color: Colors.blue,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
