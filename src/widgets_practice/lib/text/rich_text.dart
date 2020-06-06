import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

// Текст с разными стилями
// https://api.flutter.dev/flutter/widgets/RichText-class.html
class RichTextPractice extends StatelessWidget {
  final _logger = Logger('RichTextPractice');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text'),
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 16,
          ),
          GestureDetector(
            child: RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.black),
                text: 'Hello', // default text style
                children: <TextSpan>[
                  TextSpan(
                      text: ' beautiful ',
                      style: TextStyle(fontStyle: FontStyle.italic)),
                  TextSpan(
                      text: 'world',
                      style: TextStyle(fontWeight: FontWeight.bold),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => _logger.fine('bold world')),
                ],
              ),
            ),
            onTap: () {
              _logger.fine('other tap');
            },
          ),
          const SizedBox(
            height: 16,
          ),
          RichText(
            text: TextSpan(
              text: '       he candle flickered\n',
              style: TextStyle(
                  fontSize: 14, fontFamily: 'Serif', color: Colors.black),
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
