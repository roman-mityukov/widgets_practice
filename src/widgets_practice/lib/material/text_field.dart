import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Начальные значения устанавливаются с помощью
// controller: TextEditingController, можно менять внешний вид с помощью
// decoration
// https://api.flutter.dev/flutter/material/TextField-class.html
// https://material.io/components/text-fields
class TextFieldPractice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateTextFieldPractice();
  }
}

class _StateTextFieldPractice extends State<TextFieldPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField'),
      ),
      body: Center(
        child: Builder(
          builder: (context) {
            return Padding(
              padding: EdgeInsets.all(32),
              child: TextField(
                onSubmitted: (value) {
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                      content: Text(value),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
