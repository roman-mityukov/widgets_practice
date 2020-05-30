import 'package:flutter/material.dart';

// https://www.youtube.com/watch?v=O-rhXZLtpv0
// https://api.flutter.dev/flutter/material/CircularProgressIndicator-class.html
class LinearProgressIndicatorPractice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateLinearProgressIndicatorPractice();
  }
}

class _StateLinearProgressIndicatorPractice
    extends State<LinearProgressIndicatorPractice>
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
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LinearProgressIndicator'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            LinearProgressIndicator(
              backgroundColor: Colors.red,
            ),
            SizedBox(height: 24,),
            SizedBox(
              height: 24,
              child: LinearProgressIndicator(),
            ),
            SizedBox(height: 24,),
            LinearProgressIndicator(
              valueColor: _colorAnimation,
            ),
            SizedBox(height: 24,),
            LinearProgressIndicator(
              value: 0.5,
            )
          ],
        ),
      ),
    );
  }
}
