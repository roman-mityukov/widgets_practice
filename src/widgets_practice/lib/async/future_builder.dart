import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

// Возвращает потомка в зависимости от процесса и результата выполнения Future
// https://api.flutter.dev/flutter/widgets/FutureBuilder-class.html
class FutureBuilderPractice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateFutureBuilderPractice();
  }
}

class _StateFutureBuilderPractice extends State<FutureBuilderPractice> {
  Future<String> _future;
  final _logger = Logger('_StateFutureBuilderPractice');

  @override
  void initState() {
    super.initState();

    _future = Future.delayed(
      Duration(seconds: 1),
      () {
        return 'Hello world!';
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FutureBuilder'),
      ),
      body: FutureBuilder(
        future: _future,
        builder: (context, snapshot) {
          _logger.fine('snapshot.connectionState: ${snapshot.connectionState},'
              ' snapshot.data: ${snapshot.data},'
              ' snapshot.error: ${snapshot.error}');
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Center(
                child: Text('error'),
              );
            } else {
              return Center(
                child: Text(snapshot.data ?? 'null'),
              );
            }
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
