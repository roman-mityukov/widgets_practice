import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// https://api.flutter.dev/flutter/widgets/ConstrainedBox-class.html
// https://habr.com/ru/post/500210/
class ConstrainedBoxPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ConstrainedBox приводит детей к размерам заданным в его constraints,
      // поэтому Container растягивается до размеров экрана, несмотря на его
      // ширину и высоту
      body: ConstrainedBox(
        constraints: BoxConstraints.tightFor(
          width: double.infinity,
          height: double.infinity,
        ),
        child: Container(
          width: 100,
          height: 100,
          color: Colors.green,
        ),
      ),
    );
  }
}

class TwoConstrainedBoxesPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Родительский ConstrainedBox отменяет ограничения потомка, т.к. они
      // просто дополнительные и в этом случае противоречат родительским
      body: ConstrainedBox(
        constraints: BoxConstraints.tightFor(
          width: double.infinity,
          height: double.infinity,
        ),
        child: ConstrainedBox(
          constraints: BoxConstraints(
              minWidth: 50, maxWidth: 70, minHeight: 50, maxHeight: 70),
          child: Container(
            width: 100,
            height: 100,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
