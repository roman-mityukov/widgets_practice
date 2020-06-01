import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// https://material.io/archive/guidelines/components/steppers.html
// https://api.flutter.dev/flutter/material/Stepper-class.html
class StepperPractice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateStepperPractice();
  }
}

class _StateStepperPractice extends State<StepperPractice> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stepper'),
      ),
      body: Stepper(
        type: StepperType.vertical,
        currentStep: _currentStep,
        onStepTapped: (int step) => setState(() => _currentStep = step),
        onStepContinue:
            _currentStep < 2 ? () => setState(() => _currentStep += 1) : null,
        onStepCancel:
            _currentStep > 0 ? () => setState(() => _currentStep -= 1) : null,
        steps: <Step>[
          Step(
            title: const Text('Shipping'),
            content: const Text('This is the first step.'),
            isActive: _currentStep >= 0,
            state: _currentStep >= 0 ? StepState.complete : StepState.disabled,
          ),
          Step(
            title: const Text('Payment'),
            content: const Text('This is the second step.'),
            isActive: _currentStep >= 0,
            state: _currentStep >= 1 ? StepState.complete : StepState.disabled,
          ),
          Step(
            title: const Text('Order'),
            content: const Text('This is the third step.'),
            isActive: _currentStep >= 0,
            state: _currentStep >= 2 ? StepState.complete : StepState.disabled,
          ),
        ],
      ),
    );
  }
}
