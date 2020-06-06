import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

// Кастомный лэйаут для потомка
// https://api.flutter.dev/flutter/widgets/CustomSingleChildLayout-class.html
// https://api.flutter.dev/flutter/rendering/SingleChildLayoutDelegate-class.html
class CustomSingleChildLayoutPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomSingleChildLayout(
        delegate: MyCustomSingleChildLayoutDelegate(),
        child: Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
      ),
    );
  }
}

class MyCustomSingleChildLayoutDelegate extends SingleChildLayoutDelegate {
  final _logger = Logger('MyCustomSingleChildLayoutDelegate');

  @override
  bool shouldRelayout(SingleChildLayoutDelegate oldDelegate) {
    return true;
  }

  @override
  Size getSize(BoxConstraints constraints) {
    _logger.fine('getSize constraints $constraints');
    return super.getSize(constraints);
  }

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    _logger.fine('getPositionForChild size: $size childSize: $childSize');
    final offset = Offset((size.width - childSize.width) / 2,
        (size.height - childSize.height) / 2);
    return offset;
  }
}
