import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

// Кастомный лэйаут для виджета с несколькими потомками
// https://api.flutter.dev/flutter/widgets/CustomMultiChildLayout-class.html
// https://api.flutter.dev/flutter/rendering/MultiChildLayoutDelegate-class.html
class CustomMultiChildLayoutPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomMultiChildLayout(
        delegate: MyCustomMultiChildLayoutDelegate(),
        children: <Widget>[
          LayoutId(
            id: "1",
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
          ),
          LayoutId(
            id: "2",
            child: Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}

class MyCustomMultiChildLayoutDelegate extends MultiChildLayoutDelegate {
  final _logger = Logger('MyCustomSingleChildLayoutDelegate');

  @override
  Size getSize(BoxConstraints constraints) {
    _logger.fine('getSize constraints $constraints');
    return super.getSize(constraints);
  }

  @override
  void performLayout(Size size) {
    Size leaderSize = Size.zero;

    if (hasChild("1")) {
      leaderSize = layoutChild("1", BoxConstraints.loose(size));
      positionChild("1", Offset.zero);
    }

    if (hasChild("2")) {
      layoutChild("2", BoxConstraints.tight(leaderSize));
      positionChild(
        "2",
        Offset(size.width - leaderSize.width, 0),
      );
    }
  }

  @override
  bool shouldRelayout(MultiChildLayoutDelegate oldDelegate) {
    return true;
  }
}
