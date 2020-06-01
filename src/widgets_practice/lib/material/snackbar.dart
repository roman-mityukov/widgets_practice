import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// Всплывающее сообщение, чтобы показать нужен Scaffold
// https://api.flutter.dev/flutter/material/SnackBar-class.html
class SnackBarPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar'),
        elevation: 0,
      ),
      body: Center(
        child: Builder(
          builder: (context) {
            return FlatButton(
              child: Text('Show snackbar'),
              onPressed: () {
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text(
                    'Some error message',
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.red,
                ));
              },
            );
          },
        ),
      ),
    );
  }
}
