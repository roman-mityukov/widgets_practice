import 'package:flutter/material.dart';

// Обрезает потомка область в форме круга
// https://api.flutter.dev/flutter/widgets/ClipOval-class.html
class ClipOvalPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ClipOval'),
      ),
      body: ClipOval(
        child: Image.asset('assets/owl.jpg'),
      ),
    );
  }
}
