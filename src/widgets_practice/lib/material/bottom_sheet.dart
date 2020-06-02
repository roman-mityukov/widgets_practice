import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Есть два типа - persistent (остается видимым даже если пользователь
// взаимодействуюет с другим UI приложения) и modal (показывается с помощью
// showModalBottomSheet, с другим UI взаимодействовать нельзя, похож на диалог)
// Также можно указать в конструкторе Scaffold (тогда его нельзя смахнуть)
// https://material.io/components/sheets-bottom
// https://api.flutter.dev/flutter/material/BottomSheet-class.html
class BottomSheetPractice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateBottomSheetPractice();
  }
}

class _StateBottomSheetPractice extends State<BottomSheetPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomSheet'),
      ),
      body: Center(
        child: Builder(
          builder: (context) {
            return FlatButton(
              child: Text('Show BottomSheet'),
              onPressed: () {
                Scaffold.of(context).showBottomSheet(
                  (context) {
                    return SizedBox(
                      height: 200,
                      child: Container(
                        color: Colors.red,
                      ),
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
