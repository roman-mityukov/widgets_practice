import 'package:flutter/material.dart';

// Виджет, который показывает изображение.
// JPEG, PNG, GIF, Animated GIF, WebP, Animated WebP, BMP, and WBMP
// new Image, for obtaining an image from an ImageProvider.
// new Image.asset, for obtaining an image from an AssetBundle using a key.
// new Image.network, for obtaining an image from a URL.
// new Image.file, for obtaining an image from a File.
// new Image.memory, for obtaining an image from a Uint8List.
// https://api.flutter.dev/flutter/widgets/Image-class.html
class ImagePractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SizedBox(
              width: 50,
              height: 100,
              child: Image.asset(
                'assets/owl.jpg',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              width: 50,
              height: 100,
              child: Image.asset(
                'assets/owl.jpg',
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              width: 50,
              height: 100,
              child: Image.asset(
                'assets/owl.jpg',
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              width: 50,
              height: 100,
              child: Image.asset(
                'assets/owl.jpg',
                fit: BoxFit.fitWidth,
              ),
            ),
            SizedBox(
              width: 50,
              height: 100,
              child: Image.asset(
                'assets/owl.jpg',
                fit: BoxFit.none,
              ),
            ),
            SizedBox(
              width: 50,
              height: 100,
              child: Image.asset(
                'assets/owl.jpg',
                fit: BoxFit.scaleDown,
              ),
            ),
            SizedBox(
              width: 50,
              height: 100,
              child: Image.network(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                loadingBuilder: (BuildContext context, Widget currentRawImage,
                    ImageChunkEvent event) {
                  if (event == null ||
                      event.cumulativeBytesLoaded == null ||
                      event.expectedTotalBytes == null ||
                      event.expectedTotalBytes == 0) {
                    return currentRawImage;
                  } else {
                    return Center(
                      child: SizedBox(
                        width: 16,
                        height: 16,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          value: event.cumulativeBytesLoaded /
                              event.expectedTotalBytes,
                        ),
                      ),
                    );
                  }
                },
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
