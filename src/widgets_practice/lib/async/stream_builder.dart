import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

// Возвращает потомка в зависимости от процесса и результата выполнения Stream
// https://api.flutter.dev/flutter/widgets/StreamBuilder-class.html
class StreamBuilderPractice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateStreamBuilderPractice();
  }
}

class _StateStreamBuilderPractice extends State<StreamBuilderPractice> {
  final _logger = Logger('_StateFutureBuilderPractice');

  @override
  void initState() {
    super.initState();
  }

  Stream<String> stream() async* {
    for (int i = 0; i < 3; i++) {
      await Future.delayed(Duration(seconds: 1));
      yield 'value $i';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StreamBuilder'),
      ),
      body: StreamBuilder(
        stream: stream(),
        builder: (context, snapshot) {
          _logger.fine('snapshot.connectionState: ${snapshot.connectionState},'
              ' snapshot.data: ${snapshot.data},'
              ' snapshot.error: ${snapshot.error}');
          if (snapshot.connectionState != ConnectionState.waiting) {
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
