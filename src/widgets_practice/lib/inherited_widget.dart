import 'dart:math';

import 'package:flutter/material.dart';

// Предоставляет данные по дереву вниз и ребилдит виджеты, которые используют эти
// данные. Виджеты получают новые данные при перестроении.
// Если updateShouldNotify == true, то ребилдит и виджеты созданные через
// const конструктор
// https://api.flutter.dev/flutter/widgets/InheritedWidget-class.html
// https://medium.com/@mehmetf_71205/inheriting-widgets-b7ac56dbbeb1
class InheritedWidgetPractice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateInheritedWidgetPractice();
  }
}

class _StateInheritedWidgetPractice extends State<InheritedWidgetPractice> {
  Color color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            FlatButton(
              child: Text('change color'),
              onPressed: () {
                setState(() {
                  color = Color(Random().nextInt(4000000000));
                });
              },
            ),
            FrogColor(
              color: color,
              child: const FrogColorListener(),
            )
          ],
        ),
      ),
    );
  }
}

class FrogColor extends InheritedWidget {
  const FrogColor({
    Key key,
    @required this.color,
    @required Widget child,
  })  : assert(color != null),
        assert(child != null),
        super(key: key, child: child);

  final Color color;

  static FrogColor of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<FrogColor>();
  }

  @override
  bool updateShouldNotify(FrogColor old) => color != old.color;
}

class FrogColorListener extends StatelessWidget {

  const FrogColorListener();

  @override
  Widget build(BuildContext context) {
    Color color = FrogColor.of(context).color;
    return Container(
      width: 100,
      height: 100,
      color: color,
    );
  }
}
