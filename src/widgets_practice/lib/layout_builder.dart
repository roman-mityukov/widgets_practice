import 'package:flutter/material.dart';

// дает constraints родителя своим потомкам
// https://api.flutter.dev/flutter/widgets/LayoutBuilder-class.html
// https://api.flutter.dev/flutter/rendering/BoxConstraints-class.html
// https://www.youtube.com/watch?time_continue=1&v=IYDVcriKjsw&feature=emb_logo
class LayoutBuilderPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              return _RedBoxWidget(
                width: constraints.maxWidth,
                height: constraints.maxHeight,
              );
            } else {
              return Row(
                children: <Widget>[
                  _RedBoxWidget(
                    width: constraints.maxWidth / 2,
                    height: constraints.maxHeight,
                  ),
                  _RedBoxWidget(
                    width: constraints.maxWidth / 2,
                    height: constraints.maxHeight,
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}

class _RedBoxWidget extends StatelessWidget {
  final double width;
  final double height;

  const _RedBoxWidget({Key key, this.width, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double padding = 16;
    return Padding(
      padding: EdgeInsets.all(padding),
      child: Container(
        color: Colors.red,
        width: width - 2 * padding,
        height: height - 2 * padding,
      ),
    );
  }
}
