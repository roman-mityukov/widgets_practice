import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Хранит ресурсы приложения
// https://api.flutter.dev/flutter/services/AssetBundle-class.html
class AssetsBundlePractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final assetBundle = DefaultAssetBundle.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('AssetsBundle'),
      ),
      body: FutureBuilder(
        future: assetBundle.loadString('assets/some.json'),
        builder: (context, snapshot) {
          return Text(snapshot.data ?? 'null');
        },
      ),
    );
  }
}
