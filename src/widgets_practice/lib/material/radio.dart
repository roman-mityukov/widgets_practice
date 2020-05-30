import 'package:flutter/material.dart';

//
// https://api.flutter.dev/flutter/material/Radio-class.html
class RadioPractice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateRadioPractice();
  }
}

enum SingingCharacter { lafayette, jefferson }

class _StateRadioPractice extends State<RadioPractice> {
  SingingCharacter _character = SingingCharacter.lafayette;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Radio'), elevation: 0,),
      body: Column(
        children: <Widget>[
          ListTile(
            title: const Text('Lafayette'),
            leading: Radio(
              value: SingingCharacter.lafayette,
              groupValue: _character,
              onChanged: (SingingCharacter value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Thomas Jefferson'),
            leading: Radio(
              value: SingingCharacter.jefferson,
              groupValue: _character,
              onChanged: (SingingCharacter value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
