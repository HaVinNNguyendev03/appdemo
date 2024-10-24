import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';
import 'package:appdemo/quizapp/screens/home.dart';
import 'package:appdemo/quizapp/screens/questions.dart';

/// {@template quiz}
/// Quiz widget.
/// {@endtemplate}
class Quiz extends StatefulWidget {
  /// {@macro quiz}
  const Quiz({
    super.key, // ignore: unused_element
  });
  
  @internal
  // static _QuizState? maybeOf(BuildContext context) =>
  //   context.findAncestorStateOfType<_QuizState>();
  
  @override
  State<Quiz> createState() => _QuizState();
}


/// State for widget Quiz.
class _QuizState extends State<Quiz> {
  // var activeScreen = Home();
  Widget activeScreen = Home();
  void swicthScreen() {
    setState(() {
      activeScreen = Questions();
    });
  }
  /* #region Lifecycle */
  @override
  void initState() {
    super.initState();
    // Initial state initialization
  }
  
  @override
  void didUpdateWidget(covariant Quiz oldWidget) {
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
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: activeScreen,
    );
  }
}
