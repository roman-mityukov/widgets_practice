import 'dart:ui';

import 'package:flutter/material.dart';

// Обертка вокруг RichText
// https://api.flutter.dev/flutter/widgets/Text-class.html
class TextPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text'),
      ),
      body: Column(
        children: <Widget>[
          Text(
            'Hello! How are you?',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const Text.rich(
            TextSpan(
              text: 'Hello', // default text style
              children: <TextSpan>[
                TextSpan(
                    text: ' beautiful ',
                    style: TextStyle(fontStyle: FontStyle.italic)),
                TextSpan(
                    text: 'world',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          const Text(
            'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.\n'
            'Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.'
            ' Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.',
          ),
          Text.rich(
            TextSpan(
              text: '       he candle flickered\n',
              style: TextStyle(fontSize: 14, fontFamily: 'Serif'),
              children: <TextSpan>[
                TextSpan(
                  text: 'T',
                  style: TextStyle(fontSize: 37, fontFamily: 'Serif'),
                ),
                TextSpan(
                  text: 'in the moonlight as\n',
                  style: TextStyle(fontSize: 14, fontFamily: 'Serif'),
                ),
                TextSpan(
                  text: 'Dash the bird fluttered\n',
                  style: TextStyle(fontSize: 14, fontFamily: 'Serif'),
                ),
                TextSpan(
                  text: 'off into the distance.',
                  style: TextStyle(fontSize: 14, fontFamily: 'Serif'),
                ),
              ],
            ),
            strutStyle: StrutStyle(
              fontFamily: 'Serif',
              fontSize: 14,
              forceStrutHeight: true,
            ),
          ),
        ],
      ),
    );
  }
}
