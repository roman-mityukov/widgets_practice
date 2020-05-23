import 'package:flutter/material.dart';

// Compose, decorate and position child widget. Виджет состоит из нескольких
// виджетов вложенных друг в друга (в зависимости от параметров
// конструктора) - смотри исходный код.
// https://api.flutter.dev/flutter/widgets/Container-class.html
class ContainerPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Flex(
          direction: Axis.vertical,
          children: <Widget>[
            // если нет ребенка, нет размеров и есть ограничения родителя,
            // то равен ограничениям родителя
            ConstrainedBox(
              constraints: BoxConstraints.tightFor(width: 100, height: 100),
              child: Container(
                color: Colors.black87,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            // если нет ребенка и нет ограничений родителя, то размеры равны
            // нулю
            ConstrainedBox(
              constraints: BoxConstraints.tightFor(width: 100, height: 100),
              child: UnconstrainedBox(
                child: Container(
                  color: Colors.black87,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            // есть ребенок, но нет ограничений, то равен размеру ребенка
            Container(
              color: Colors.black87,
              child: Container(
                color: Colors.green,
                width: 50,
                height: 50,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            ConstrainedBox(
              constraints: BoxConstraints.tightFor(width: 100, height: 100),
              child: Container(
                color: Colors.black87,
                alignment: Alignment.bottomRight,
                child: Container(
                  width: 20,
                  height: 20,
                  color: Colors.red,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            ConstrainedBox(
              constraints: BoxConstraints.tightFor(width: 100, height: 100),
              child: Container(
                color: Colors.black87,
                alignment: Alignment.center,
                child: Container(
                  width: 20,
                  height: 20,
                  color: Colors.red,
                  transform: Matrix4.rotationZ(0.25),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            ConstrainedBox(
              constraints: BoxConstraints.tightFor(width: 100, height: 100),
              child: Container(
                alignment: Alignment.bottomRight,
                decoration: BoxDecoration(color: Colors.green),
                child: Container(
                  width: 20,
                  height: 20,
                  color: Colors.red,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            ConstrainedBox(
              constraints: BoxConstraints.tightFor(width: 100, height: 100),
              child: Container(
                color: Colors.black87,
                alignment: Alignment.bottomRight,
                foregroundDecoration:
                    BoxDecoration(color: Colors.green.withAlpha(128)),
                child: Container(
                  width: 20,
                  height: 20,
                  color: Colors.red,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            ConstrainedBox(
              constraints: BoxConstraints.tightFor(width: 100, height: 100),
              child: Container(
                color: Colors.black87,
                padding: EdgeInsets.all(8),
                alignment: Alignment.bottomRight,
                child: Container(
                  width: 20,
                  height: 20,
                  color: Colors.red,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            ConstrainedBox(
              constraints: BoxConstraints.tightFor(width: 100, height: 100),
              child: Container(
                color: Colors.black87,
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.all(8),
                child: Container(
                  width: 20,
                  height: 20,
                  color: Colors.red,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
