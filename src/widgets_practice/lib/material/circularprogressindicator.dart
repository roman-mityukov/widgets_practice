import 'package:flutter/material.dart';

//
// https://api.flutter.dev/flutter/material/CircularProgressIndicator-class.html
class CircularProgressIndicatorPractice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateCircularProgressIndicatorPractice();
  }
}

class _StateCircularProgressIndicatorPractice
    extends State<CircularProgressIndicatorPractice>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<Color> _colorAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      value: 1,
      duration: Duration(seconds: 1),
      vsync: this,
    );
    _colorAnimation = _animationController.drive(
      ColorTween(
        begin: Colors.green,
        end: Colors.red,
      ),
    );
    _animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CircularProgressIndicator'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 24,
            crossAxisSpacing: 24,
          ),
          children: <Widget>[
            Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.red,
              ),
            ),
            Center(
              child: CircularProgressIndicator(
                strokeWidth: 1,
              ),
            ),
            Center(
              child: CircularProgressIndicator(
                valueColor: _colorAnimation,
              ),
            ),
            Center(
              child: CircularProgressIndicator(
                value: 0.5,
              ),
            )
          ],
        ),
      ),
    );
  }
}
