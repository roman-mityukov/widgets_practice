import 'package:flutter/material.dart';

// Использует baseline потомка для его выравнивания внутри себя
// https://stackoverflow.com/questions/51125756/in-flutter-how-can-i-define-a-baseline-for-a-stateless-widget
// https://api.flutter.dev/flutter/widgets/Baseline-class.html
class BaseLinePractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Baseline'),
      ),
      body: Baseline(
        baseline: 48,
        baselineType: TextBaseline.alphabetic,
        child: Text('Hello world'),
      ),
    );
  }
}
