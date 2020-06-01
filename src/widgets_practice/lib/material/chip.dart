import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// https://material.io/components/chips
// https://api.flutter.dev/flutter/material/Chip-class.html
// https://api.flutter.dev/flutter/material/InputChip-class.html
// https://api.flutter.dev/flutter/material/ChoiceChip-class.html
// https://api.flutter.dev/flutter/material/FilterChip-class.html
// https://api.flutter.dev/flutter/material/ActionChip-class.html
class ChipPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chip'),
        elevation: 0,
      ),
      body: Wrap(
        children: <Widget>[
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.grey.shade800,
              child: Text('AB'),
            ),
            label: Text('Aaron Burr'),
          ),
          InputChip(
              avatar: CircleAvatar(
                backgroundColor: Colors.grey.shade800,
                child: Text('AB'),
              ),
              label: Text('Aaron Burr'),
              onPressed: () {
                print('I am the one thing in life.');
              }
          ),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.grey.shade800,
              child: Text('SJ'),
            ),
            label: Text('Smith John'),
            onDeleted: (){},
          ),
          ChoiceChip(
            label: Text('Item 1'),
            selected: true,
            onSelected: (bool selected) {

            },
          ),
          ChoiceChip(
            label: Text('Item 1'),
            selected: false,
            onSelected: (bool selected) {

            },
          ),
          ActionChip(
              avatar: CircleAvatar(
                backgroundColor: Colors.grey.shade800,
                child: Text('AB'),
              ),
              label: Text('Aaron Burr'),
              onPressed: () {
                print("If you stand for nothing, Burr, what’ll you fall for?");
              }
          )
        ],
      ),
    );
  }
}
