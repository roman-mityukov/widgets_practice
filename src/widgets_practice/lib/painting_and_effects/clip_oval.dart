import 'package:flutter/material.dart';

// Обрезает потомка областью в форме круга
// https://medium.com/flutter-community/clipping-in-flutter-e9eaa6b1721a
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
