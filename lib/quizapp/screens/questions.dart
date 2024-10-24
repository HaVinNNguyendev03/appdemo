import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';


/// {@template questions}
/// Questions widget.
/// {@endtemplate}
class Questions extends StatefulWidget {
  /// {@macro questions}
  const Questions({
    super.key, // ignore: unused_element
  });
  
  /// The state from the closest instance of this class
  /// that encloses the given context, if any.
  // @internal
  // static _QuestionsState? maybeOf(BuildContext context) =>
  //   context.findAncestorStateOfType<_QuestionsState>();
  
  @override
  State<Questions> createState() => _QuestionsState();
}


/// State for widget Questions.
class _QuestionsState extends State<Questions> {

  /* #region Lifecycle */
  @override
  void initState() {
    super.initState();
    // Initial state initialization
  }
  
  @override
  void didUpdateWidget(covariant Questions oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Widget configuration changed
  }
  
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // The configuration of InheritedWidgets has changed
    // Also called after initState but before build
  }
  
  @override
  void dispose() {
    // Permanent removal of a tree stent
    super.dispose();
  }
  /* #endregion */
  
  @override
  Widget build(BuildContext context) {
    return Text("Questions");
  }
}
