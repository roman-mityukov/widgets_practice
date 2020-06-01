import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// Требует от пользователя действия
// https://api.flutter.dev/flutter/material/AlertDialog-class.html
class AlertDialogPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialog'),
        elevation: 0,
      ),
      body: Center(
        child: FlatButton(
          child: Text('Show dialog'),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('Select assignment'),
                  content: SingleChildScrollView(
                    child: ListBody(
                      children: <Widget>[
                        Text('This is a demo alert dialog.'),
                        Text('Would you like to approve of this message?'),
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    SimpleDialogOption(
                      onPressed: () {
                        Navigator.pop(context, true);
                      },
                      child: const Text('Treasury'),
                    ),
                    SimpleDialogOption(
                      onPressed: () {
                        Navigator.pop(context, false);
                      },
                      child: const Text('State'),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
