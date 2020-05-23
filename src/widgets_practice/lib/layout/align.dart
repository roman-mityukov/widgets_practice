import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// Выравнивает потомка внутри себя. Если ограничения заданы родителем, то Align
// будет большим, насколько позволят ограничения. Иначе его размер будет равен
// размеру потомка. widthFactor, heightFactor делают размер Align равным
// widthFactor * размер потомка и heightFactor * размер потомка (если
// ограничения для Align не определены)
// https://api.flutter.dev/flutter/widgets/Align-class.html
class AlignPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Flex(
        direction: Axis.vertical,
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints.tightFor(width: 100, height: 100),
            child: Container(
              color: Colors.black87,
              child: Align(
                child: Container(
                  width: 20,
                  height: 20,
                  color: Colors.red,
                ),
                alignment: Alignment.bottomRight,
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
              child: Align(
                child: Container(
                  width: 20,
                  height: 20,
                  color: Colors.red,
                ),
                alignment: Alignment.bottomLeft,
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
              child: Align(
                child: Container(
                  width: 20,
                  height: 20,
                  color: Colors.red,
                ),
                alignment: Alignment(0, 0),
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
              child: Align(
                child: Container(
                  width: 20,
                  height: 20,
                  color: Colors.red,
                ),
                // 0, 0 указывает на центр Align
                alignment: Alignment(0.5, 0.5),
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
              child: Align(
                child: Container(
                  width: 20,
                  height: 20,
                  color: Colors.red,
                ),
                alignment: Alignment(-0.5, -0.5),
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
              child: UnconstrainedBox(
                child: Align(
                  widthFactor: 3,
                  heightFactor: 3,
                  child: Container(
                    width: 20,
                    height: 20,
                    color: Colors.red,
                  ),
                  alignment: Alignment(-0.5, -0.5),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
