import 'package:flutter/material.dart';

// Группирует FormField виджеты, упрощает сохранение, сброс и валидацию
// значений всех потомков
// FormField - хранит состояние одного поля, валидирует и обновляет его,
// требует в конструкторе builder, которые возвращает виджет-потомок.
// TextFormField возвращает TextField например.
// https://api.flutter.dev/flutter/widgets/Form-class.html
// https://api.flutter.dev/flutter/widgets/FormField-class.html
class FormPractice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateFormPractice();
  }
}

class _StateFormPractice extends State<FormPractice> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FormField'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter your email',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: RaisedButton(
                onPressed: () {
                  // Validate will return true if the form is valid, or false if
                  // the form is invalid.
                  if (_formKey.currentState.validate()) {
                    // Process data.
                  }
                },
                child: Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
