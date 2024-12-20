import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';
import 'package:appdemo/quizapp/screens/home.dart';
import 'package:appdemo/quizapp/screens/questions.dart';
import 'package:appdemo/quizapp/data/quizdata.dart';
import 'package:appdemo/quizapp/screens/results_question.dart';
/// {@template quiz}
/// Quiz widget.
/// {@endtemplate}
class Quiz extends StatefulWidget {
  /// {@macro quiz}
  const Quiz({
    super.key, // ignore: unused_element
  });
  
  // @internal
  // // static _QuizState? maybeOf(BuildContext context) =>
  // //   context.findAncestorStateOfType<_QuizState>();
  
  @override
  State<Quiz> createState() => _QuizState();
}


/// State for widget Quiz.
class _QuizState extends State<Quiz> {
  // var activeScreen = Home();
  var activeScreen = 'Home';
  List<String> selectedAnsewrs = [];
  /* #region Lifecycle */
  @override
  // void initState() {
  //   activeScreen = Home(swicthScreen);
  //   super.initState();
  //   // Initial state initialization
  // }
  
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

  void swicthScreen() {
    setState(() {
      activeScreen = 'Questions';
    });
  }
  
  void chooseAnswer (String answer) {
   selectedAnsewrs.add(answer);
   if(selectedAnsewrs.length == arraydata.length) {
    setState(() {
      activeScreen = 'Results';
    });
   }
  }
  @override
  Widget build(BuildContext context) {
    Widget screenWidget = Home(swicthScreen);
      if(activeScreen == 'Questions') {
        screenWidget = Container(
          color: Theme.of(context).colorScheme.primary,
          child: Questions(onSelectAnswer: chooseAnswer),);
      } else if(activeScreen == 'Home') {
        screenWidget = Home(swicthScreen);
      }
      if (activeScreen == 'Results') {
        screenWidget = ResultsQuestion(chooseAnswers: selectedAnsewrs,swicthScreen: swicthScreen,);
      }
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: Colors.deepPurple, 
        textTheme: TextTheme(
          bodyLarge: TextStyle(decoration: TextDecoration.none),
          bodyMedium: TextStyle(decoration: TextDecoration.none),
          bodySmall: TextStyle(decoration: TextDecoration.none),
        ),
        useMaterial3: true,
      ),
      home: screenWidget,
    );
  }
}
