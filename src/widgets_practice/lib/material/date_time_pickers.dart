import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

// https://api.flutter.dev/flutter/material/showDatePicker.html
class DateTimePickersPractice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateDateTimePickersPractice();
  }
}

class _StateDateTimePickersPractice extends State<DateTimePickersPractice> {
  final _logger = Logger('_StateDateTimePickersPractice');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DateTimePickers'),
      ),
      body: Center(
        child: IntrinsicWidth(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              FlatButton(
                color: Colors.green,
                onPressed: () async {
                  final result = await showDatePicker(
                    context: context,
                    initialDate: DateTime(2018),
                    firstDate: DateTime(2017),
                    lastDate: DateTime(2020),
                  );

                  _logger.fine(result);
                },
                child: Text(
                  "Select Date",
                ),
              ),
              FlatButton(
                color: Colors.green,
                onPressed: () async {
                  final result = await showDatePicker(
                    context: context,
                    initialDatePickerMode: DatePickerMode.year,
                    initialDate: DateTime(2018),
                    firstDate: DateTime(2017),
                    lastDate: DateTime(2020),
                  );

                  _logger.fine(result);
                },
                child: Text(
                  "Select Year",
                ),
              ),
              FlatButton(
                color: Colors.green,
                onPressed: () async {
                  final result = await showDatePicker(
                    context: context,
                    initialEntryMode: DatePickerEntryMode.input,
                    initialDate: DateTime(2018),
                    firstDate: DateTime(2017),
                    lastDate: DateTime(2020),
                  );

                  _logger.fine(result);
                },
                child: Text(
                  "Select Date With Input",
                ),
              ),
              FlatButton(
                color: Colors.green,
                onPressed: () async {
                  final result = await showTimePicker(
                      context: context, initialTime: TimeOfDay.now());

                  _logger.fine(result);
                },
                child: Text(
                  "Select Time",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
