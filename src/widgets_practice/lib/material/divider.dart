import 'package:flutter/material.dart';

// Тонкая горизонтальная линия с отступом по краям (Внутри Container высотой
// height и BoxDecoration)
// https://api.flutter.dev/flutter/material/Divider-class.html
class DividerPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Divider'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                color: Colors.amber,
                child: const Center(
                  child: Text('Above'),
                ),
              ),
            ),
            const Divider(
              color: Colors.black,
              height: 20,
              thickness: 5,
              indent: 20,
              endIndent: 0,
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                child: const Center(
                  child: Text('Below'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
