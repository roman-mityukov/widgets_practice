import 'package:flutter/material.dart';

// Виджет неактивен если onChanged равен null или не задан интервал
// Если нужен адаптивный слайдер (под каждую платформу), то можно использовать
// Slider.adaptive()
// https://api.flutter.dev/flutter/material/Slider-class.html
class SliderPractice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateSliderPractice();
  }
}

class _StateSliderPractice extends State<SliderPractice> {
  var someValue = 0.0;
  var someValueDivisions = 0.0;
  var selectedRange = RangeValues(0.2, 0.8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Slider(
              value: someValue,
              onChanged: (value) {
                setState(
                  () {
                    someValue = value;
                  },
                );
              },
            ),
            SliderTheme(
              data: SliderThemeData(
                showValueIndicator: ShowValueIndicator.always,
              ),
              child: RangeSlider(
                values: selectedRange,
                onChanged: (newRange) {
                  setState(
                    () {
                      selectedRange = newRange;
                    },
                  );
                },
                labels: RangeLabels(
                  '${selectedRange.start.toStringAsFixed(1)}',
                  '${selectedRange.end.toStringAsFixed(1)}',
                ),
              ),
            ),
            Slider(
              value: someValueDivisions,
              onChanged: (value) {
                setState(
                  () {
                    someValueDivisions = value;
                  },
                );
              },
              min: 0,
              max: 100,
              divisions: 5,
              label: '$someValueDivisions',
            )
          ],
        ),
      ),
    );
  }
}
