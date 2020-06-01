import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// https://api.flutter.dev/flutter/material/SimpleDialog-class.html
class SimpleDialogPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SimpleDialog'),
        elevation: 0,
      ),
      body: Center(
        child: FlatButton(
          child: Text('Show dialog'),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return SimpleDialog(
                  title: const Text('Select assignment'),
                  children: <Widget>[
                    SimpleDialogOption(
                      onPressed: () {
                        Navigator.pop(context, true);
                      },
                      child: const Text('Treasury department'),
                    ),
                    SimpleDialogOption(
                      onPressed: () {
                        Navigator.pop(context, false);
                      },
                      child: const Text('State department'),
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
