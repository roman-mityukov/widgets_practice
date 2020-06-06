import 'package:flutter/material.dart';

// A widget that annotates the widget tree with a description of the meaning of
// the widgets Used by accessibility tools, search engines, and other semantic
// analysis software to determine the meaning of the application.
// - totally optional (meaning that you could live without caring about it but
// not recommended),
// - meant to be used in conjunction with Android TalkBack or iOS VoiceOver
// (e.g. mostly by visually impaired people)
// - meant to be used by a Screen Reader that will describe the application
// without having to look at the screen.
//
// Most of the Flutter Widgets are implicitly defined as Semantics since they all
// might be directly or indirectly used by the Screen Reader engine.
//
// To illustrate this, here is an extract of the Flutter source code related
// to a Button:
//class _RawMaterialButtonState extends State<RawMaterialButton> {
//  @override
//  Widget build(BuildContext context) {
//    // ....
//    return new Semantics(
//      container: true,
//      button: true,
//      enabled: widget.enabled,
//      child: new ConstrainedBox(
//        constraints: widget.constraints,
//        child: new Material(),
//      ),
//    );
//  }
//}

//How to not have a Semantics?
//Sometimes, there might be cases where you would not need any Semantics at all. This might be the case for parts of the screen which are only decorative, not important to the user.
//
//In this case, you need to use the ExcludeSemantics class to exclude the Semantics of all this Widget’s descendants. Its syntax is the following:
//
//@override
//Widget build(BuildContext context){
//  bool alsoExcludeThisWidget = true;
//
//  return new ExcludeSemantics(
//      excluding: alsoExcludeThisWidget,
//      child: ...
//  );
//}
//The excluding property (default: true), tells the system whether you also want this Widget to be excluded from the Semantics tree as well.

//How to regroup Widgets into one single Semantics?
//Under some circumstances, you might also want to regroup all the Semantics
// of a set of Widgets.
//
//A basic example of such case might be a visual block made up of a Label and
// a Checkbox, each one defining its own Semantics. It would be preferable that
// if the user presses the block, the Mobile Device assistive technology would
// give assistance related to the group rather than to each Widget of the group.
//
//In this case, you should use the MergeSemantics class.

//
// Finally, if you want to debug the Semantics of your application, you may set
// the showSemanticsDebugger property of your MaterialApp to true. This will
// force Flutter to generate an overlay to visualize the Semantics tree.
//
// https://www.didierboelens.com/2018/07/semantics/#:~:text=When%20Flutter%20renders%20the%20Widgets,to%20a%20group%20of%20Widgets.
// https://api.flutter.dev/flutter/widgets/Semantics-class.html
class SemanticsPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Semantics'),
      ),
      body: Semantics(
        child: Container(
          color: Colors.red,
        ),
        label: 'red rectangle',
      ),
    );
  }
}
