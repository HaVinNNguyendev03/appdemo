import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';
import 'package:appdemo/quizapp/widget/ansew_button.dart';
import 'package:appdemo/quizapp/data/quizdata.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:appdemo/quizapp/screens/quiz.dart';

/// {@template questions}
/// Questions widget.
/// {@endtemplate}
class Questions extends StatefulWidget {
  /// {@macro questions}
  const Questions({
    super.key, // ignore: unused_element
    required this.onSelectAnswer,
  });
  final void Function(String answer) onSelectAnswer;
  
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
   var cunrrentQuestionsScreen = 0;
  void ansewrQuestion (String selectedAnsewrs) {
    widget.onSelectAnswer(selectedAnsewrs);
    setState(() {
      cunrrentQuestionsScreen++;
    });
  }

 
  @override
    Widget build(BuildContext context) {
      final cunrrentQuestions = arraydata[cunrrentQuestionsScreen];
      return SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
               cunrrentQuestions.title,
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 232, 191, 253),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                ),  
              ),
              const SizedBox(height: 16),
              ...cunrrentQuestions.questionsShuffle().map((question){
                return AnsewButton(ansewtetxt: question,onTap: (){
                  ansewrQuestion(question);
                },);
              })
            ],
          ),
        ),
      );
    }
  }
