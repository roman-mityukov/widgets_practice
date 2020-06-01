import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// Кнопка, которая при нажатии показывает всплывающее меню
// https://api.flutter.dev/flutter/material/PopupMenuButton-class.html
class PopupMenuButtonPractice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StatePopupMenuButtonPractice();
  }
}

class _StatePopupMenuButtonPractice extends State<PopupMenuButtonPractice> {
  WhyFarther _selection;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PopupMenuButton'),
        elevation: 0,
      ),
      body: Center(
        child: PopupMenuButton<WhyFarther>(
          onSelected: (WhyFarther result) {
            setState(() {
              _selection = result;
            });
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<WhyFarther>>[
            const PopupMenuItem<WhyFarther>(
              value: WhyFarther.harder,
              child: Text('Working a lot harder'),
            ),
            const PopupMenuItem<WhyFarther>(
              value: WhyFarther.smarter,
              child: Text('Being a lot smarter'),
            ),
            const PopupMenuItem<WhyFarther>(
              value: WhyFarther.selfStarter,
              child: Text('Being a self-starter'),
            ),
            const PopupMenuItem<WhyFarther>(
              value: WhyFarther.tradingCharter,
              child: Text('Placed in charge of trading charter'),
            ),
          ],
        ),
      ),
    );
  }
}

enum WhyFarther { harder, smarter, selfStarter, tradingCharter }
