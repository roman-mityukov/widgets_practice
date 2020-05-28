import 'package:flutter/material.dart';

// Обрезает потомка областью в форме кастомного пути из точек
// https://medium.com/flutter-community/clipping-in-flutter-e9eaa6b1721a
// https://api.flutter.dev/flutter/widgets/ClipPath-class.html
class ClipPathPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ClipPath'),
      ),
      body: ClipPath(
        clipper: TriangleClipper(),
        child: Image.asset('assets/owl.jpg'),
      ),
    );
  }
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width / 2, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TriangleClipper oldClipper) => false;
}
