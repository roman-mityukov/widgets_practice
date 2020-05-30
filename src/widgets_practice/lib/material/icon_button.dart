import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//
// https://api.flutter.dev/flutter/material/IconButton-class.html
class IconButtonPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
          onPressed: (){

          },
          icon: Icon(Icons.repeat),
        ),
      ),
    );
  }
}
